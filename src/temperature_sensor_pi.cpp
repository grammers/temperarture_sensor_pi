#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <dirent.h>
#include <string.h>
#include <time.h>
#include <ctime>
#include "arrowhead/Provider.h"
#include "json-c/json.h"

using namespace arrowhead;

int callback(const char *URL, std::string *return_data);

Provider temp_sensor("sensor.json", callback);
char path[50] = "/sys/bus/w1/devices/";


// Json msgs structure
// 	{ 
// 		"Entity": [ { 
// 			"ID": "28-00000", 
// 			"Temperature": 22.375, 
// 			"Time_stamp": 1564733828 
// 		} ], 
//		"ServiceName": "real_temperature", 
// 		"Unit": "Celsius" 
// 	}
json_object* msgs(double value){
	
	json_object* obj = json_object_new_object();	
	json_object *arr_obj = json_object_new_array();
	json_object *arr_cont = json_object_new_object();

	json_object_object_add(arr_cont,"ID", json_object_new_string("28-00000"));
	json_object_object_add(arr_cont,"Temperature", json_object_new_double(value));
	json_object_object_add(arr_cont,"Time_stamp", json_object_new_int(std::time(0)));
	json_object_array_add(arr_obj, arr_cont);
	json_object_object_add(obj,"Entity", arr_obj);
	json_object_object_add(obj,"ServiceName", json_object_new_string(temp_sensor.config.SERVICE_NAME.c_str()));
	json_object_object_add(obj,"Unit", json_object_new_string(temp_sensor.config.UNIT.c_str()));

	return obj;
}

double temp_update(){
	int fd =-1;
	char buf[100];
	// Open the file in the path.
	if((fd = open(path,O_RDONLY)) < 0)
    {
        printf("open error\n");
        return 0;
    }
    // Read the file
    if(read(fd,buf,sizeof(buf)) < 0)
    {
        printf("read error\n");
        return 0;
    }
    // Returns the first index of 't'.
	char *temp = strchr(buf,'t');
    // Read the string following "t=".
    sscanf(temp,"t=%s",temp);
    // atof: changes string to float.
    double value = atof(temp)/1000;
    printf("temp : %3.3f °C\n",value);
 
	return value;
}

// callback for GET requests,
// temperature are reed when some one asks for it.
int callback(const char *URL, std::string *return_data){
	printf("In callback! Some one wont my data! \n");
	
	// read the latest temperature
	double value = temp_update();
	
	// sett the data that will be returned
	*return_data = json_object_get_string(msgs(value));
	
	printf("Return data: \n%s\n\n", return_data -> c_str());
	return 1;
}

int main(int argc, char *argv[])
{
	char rom[20];
	DIR *dirp;
	struct dirent *direntp;

    // These tow lines mount the device:
    system("sudo modprobe w1-gpio");
    system("sudo modprobe w1-therm");
    // Check if /sys/bus/w1/devices/ exists.
    if((dirp = opendir(path)) == NULL)
    {
        printf("opendir error\n");
        return 1;
    }
    // Reads the directories or files in the current directory.
    while((direntp = readdir(dirp)) != NULL)
    {
        // If 28-00000 is the substring of d_name,
        // then copy d_name to rom and print rom.  
        if(strstr(direntp->d_name,"28-00000"))
        {
            strcpy(rom,direntp->d_name);
            printf(" rom: %s\n",rom);
        }
    }
    closedir(dirp);
    // Append the String rom and "/w1_slave" to path
    // path becomes to "/sys/bus/w1/devices/28-00000xxxx/w1_slave"
    strcat(path,rom);
    strcat(path,"/w1_slave");
    
	// infantry loop while waiting for GET requests
	while(1)
    {
        sleep(500);
    }
    return 0;
}

#include <iostream>
#include "arrowhead/Consumer.h"


// callback when a request returns.
// url contains the customs url (config.SERVICE_URL)
// ptr constains the message.
static void callback(const char* url, const char* prt){
	printf("callback received: \n%s\n", prt);
}


int main(int argc, char* argv[]) {
	// create a instance of an arrowhead consumer
	arrowhead::Consumer consumer("consumer.json", callback);
	// print configs for debuging
	consumer.config.print();

	while(true) {
		// send a request to provider
		consumer.request();
		sleep(5);
	}

	return 1;
}

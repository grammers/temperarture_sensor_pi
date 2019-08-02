# Temperature sensor

These is a implementation of a one wire temperature sensor.
Temperature is provided to arrowhead.
The arrowhead part uses thees
[library](https://github.com/grammers/client-cpp) to operate.
It also need a connection to an [Arrowhead core](https://github.com/arrowhead-f/core-java).
It is tricky to run that on a pi.
The pis memory is not enough for the entire core.
You would haw to only run the bare essentials.

## Setup
The hard ware setup:
![alt text](shematics.png)

The `.json` files need to be updated to fitt your setup.
Check address's, port's and acces_uri!
Lood the system to the arrowhead DB by runing `ah_get_db_setup -f config.json` on the machin with arrowhead core.
The comand is included in `cilent-cpp`.

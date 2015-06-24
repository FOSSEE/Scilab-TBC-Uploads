//Chapter 1, Problem 8
clc;
E=1.8*10^6;                 //energy consumes by electric heater
T=30*60;                    //time in seconds
V=250;                  //supply voltage
P=E/T;                      //calculating power rating of the heater
printf("Power rating of heater = %f kW \n\n\n",P/1000);
I=P/V;                          //calculating current taken from the supply
printf("Current taken from supply = %f A \n\n\n",I);

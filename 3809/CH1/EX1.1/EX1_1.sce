//Chapter 1, Example 1.1

clc
//Initialisation
v1=15.8                                  //voltage
v2=12.3                                  //voltage
r=220                                    //resistance in ohm

//Calculation
v=v1-v2                                 //voltage
i=v/r                                 //current in ampere

//Results
printf("Current, I = %.1f mA",(i*1000))

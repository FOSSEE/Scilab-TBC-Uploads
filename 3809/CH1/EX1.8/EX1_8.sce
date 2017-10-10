//Chapter 1, Example 1.8

clc
//Initialisation
v1=15                                 //voltage
v2=3                                  //voltage
r1=1000                                    //resistance in ohm
r2=500                                    //resistance in ohm


//Calculation
v=v2+((v1-v2)*(r2/(r1+r2)))                                //voltage


//Results
printf("Voltage, V = %d V",v)

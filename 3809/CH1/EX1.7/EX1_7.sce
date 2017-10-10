//Chapter 1, Example 1.7

clc
//Initialisation
v1=10                                 //voltage
v2=0                                  //voltage
r1=200                                    //resistance in ohm
r2=300                                    //resistance in ohm


//Calculation
v=v1*(r2/(r1+r2))                                //voltage


//Results
printf("Voltage, V = %d V",v)

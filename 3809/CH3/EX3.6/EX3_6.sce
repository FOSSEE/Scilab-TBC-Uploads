//Chapter 3, Example 3.6

clc
//Initialisation'
v1=5                          //voltage
i=2                            //current in ampere
r1=10                         //resistance in ohm
r2=5                        //resistance in ohm

//Calculation
i1=v1/(r1+r2)                            //current in ampere
r=(r1*r2)/(r1+r2)                      //resistance in ohm
v=i*r                         //voltage
i2=v/r2                           //current in ampere
i3=i1+i2                           //current in ampere

//Results
printf("Current, I = %.2f A",i3)

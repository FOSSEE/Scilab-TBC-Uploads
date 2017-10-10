//Chapter 2, Example 2.6
clc
//Initialisation
i2=1*10^-3                   //full scale deflection current in ampere
v=50                         //full scale deflection voltage
r=25                        //resistance in ohm

//Calculation
i3=1/i2                   //reduction of the sensitivity of the meter
R=v/i2                     //Resistance in ohm
rse=R-r                     //Resistance in ohm

//Result
printf("Series Resistance, Rse = %.3f Kohm\n",rse/1000)
printf(" \t\t\t≈ %.1f Kohm",rse/1000)

//Chapter-6,Example 6_14,Page 6-32
clc()

//Given Values:
M=12*10^3        //Mass of an iron core in grams
D=7.5            //Density of iron in gm/cc
f=50             //Frequency
A=3000           //Loss due to Area of hysterisis loop in ergs/cm^3

//Calculations:
V=M/D           //Volume of iron core
L1=A*V          //Loss of energy in core per cycle

L=L1*f*3600     //Loss of energy per hour

printf('Loss of energy per hour is =%.0f Erg \n',L)

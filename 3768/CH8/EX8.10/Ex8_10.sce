//Example number 8.10, Page number 173

clc;clear;
close;

//Variable declaration
h=200;     //hysteresis loss per cycle(J/m**3)
M=7650;    //atomic weight(kg/m**3)
n=100;     //magnetisation cycles per second
//Calculation
hpl=h*n;     //hysteresis power loss per second(watt/m**3)
pl=hpl/M;    //power loss(watt/kg)
//Result
printf("hysteresis power loss per second is %.f W/m^3",hpl)
printf("\n power loss is %.3f W/kg",pl)

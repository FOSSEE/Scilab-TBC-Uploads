//Example number 8.9, Page number 173

clc;clear;
close;

//Variable declaration
A=100;     //area(m**2)
B=0.01;    //flux density(wb/m**2)
H=40;      //magnetic field(amp/m)
M=7650;    //atomic weight(kg/m**3)
//Calculation
h=A*B*H;    //hysteresis loss per cycle(J/m**3)
//Result
printf("hysteresis loss per cycle is %.f J/m^3",h)

//Example number 10.8, Page number 226

clc;clear;
close;

//Variable declaration
e=1.6*10**-19;    //charge(c)
h=6.626*10**-36;   //plank constant
V=8.5*10**-6;    //voltage(V)
//Calculation
new=2*e*V/h;    //frequency(Hz)
//Result
printf("frequency is %.3e Hz",new)

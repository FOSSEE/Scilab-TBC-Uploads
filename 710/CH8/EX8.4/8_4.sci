clc();
clear;
//Determining temperature when magnetisation,curies constant,magnetic field are given

//T=(C*B)/(mew0*B)
C=2.1*10^-3;           //C is curie's constant
B=0.38;                //magnetic field
mew0=4*(%pi)*10^-7;   //molecular magnetic moment
M=2.15;               //magnetisation in A/m
T=(C*B)/(mew0*M)     //temperature in kelvin
printf("Temperature is %f K",T);
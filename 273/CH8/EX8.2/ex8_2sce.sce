clc;clear;
//Example 8.2
//Polarizer,calculation of angle

//given values
Io=1;//intensity of polarised light
I1=Io/2;//intensity of beam polarised by first by first polariser
I2=Io/3;//intensity of light polarised by second polariser


 //calculation
a=acos(sqrt(I2/I1));
alpha=a*180/%pi;//conversion of angle into degree
disp(alpha,'angle between characteristic directions  (in degree) is');
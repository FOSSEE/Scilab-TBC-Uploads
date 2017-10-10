//Example 9_1
clc();
clear;
//To find its mass and how large a cube of ice has the same mass
pu=18680   //units in Kg/meter^3
s=2*10^-2   //units in meters
vu=s^3   //units in meter^3
mu=pu*vu    //units in Kg
printf("Mass Mu=%.3f Kg\n",mu)
pi=920   //units in Kg/meter^3
vi=mu/pi   //units in meter^3
ss=vi^(1/3)*10^2   //units in cm
printf("Side length of ice cube is=%.2f cm",ss)

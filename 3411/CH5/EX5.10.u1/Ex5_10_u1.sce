//Example 5_10_u1
clc();
clear;
//To calculate the lattice constant
h=6.63*10^-34      //units in m^2 kg s^-1
m=1.804*10^-27      //units in Kgs
KB=1.38*10^-23       //units in m^2 kg s^-2 K^-1
T=300               //units in K
lamda=h/sqrt(3*m*KB*T)            //units in meters
n=2
a=(sqrt(3)*lamda)/2         //units in meters
printf("Lattice constant a=");
disp(a);
printf("meters")

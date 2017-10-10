
//Example 16_3
clc();
clear;
//To find the speed of an electron
e=1.6*10^-19    //Units in C
vab=45    //Units in V
m=9.11*10^-31      //Units in Kg
va=sqrt((2*e*vab)/m)     //Units in meters/sec
printf("The speed of the electron is Vab=%.2f meters/sec",va)

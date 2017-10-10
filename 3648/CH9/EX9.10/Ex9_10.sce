//Example 9_10
clc();
clear;
//To  find out how fast a raindrop becomes turbulent
Nr=10   //Number of molecules
n=1.9*10^-5   //Units in PI
p=1.29   //Units in Kg/Meter^3
d=3*10^-3   //Units in meters
vc=(Nr*n)/(p*d)     //units in meters/sec
printf("The speed of the rain drop is Vc=%.3f meters/sec",vc)

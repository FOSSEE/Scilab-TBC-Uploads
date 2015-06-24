clc();
clear;
//Given :
m = 9.109*10^-31;// eletcron mass in kg
e = 1.6*10^-19; // electron charge in C
//T = (2*pi*m)/(B*e) , here B is not given
T = (2*%pi*m)/e;// time in s
printf("T = %.2f x 10^-11 / B ",T*10^11);

//Example 5.21
clear;
clc;

//Given
delHtrans=13.4;//latent heat of fusion in J g^-1
delVm=0.0126;//change in volume due to transition in cm^3 g^-1
T=368.5;//temperature in K

//To determine the increase in the transition point between 2 forms of sulphur for increase in atmospheric pressure
a=(delHtrans*10)/(T*delVm*1.01325);//a=(delP/delT)
b=a^(-1);//b=(delT/delP)
mprintf('The transition point between 2 forms of sulphur should be increased by %f K atm^-1',b);
//end
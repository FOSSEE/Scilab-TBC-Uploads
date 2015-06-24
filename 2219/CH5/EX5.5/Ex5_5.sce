//chapter 5 example 5 
//=============================================================================
clc;
clear;
//Given Data
F     =  1*10^9;//two cavity klystron operating frequency
Va    =  2500;//Accelarating voltage in volts
e     =  1.6*10^-19;//charge of electron
m     =  9.1*10^-31;//mass of electron in kg
s     =  0.1*10^-2;//input cavity space
//Calculations

u     = sqrt((2*e*Va)/m);//velocity at which electron beam enters the gap
T     = s/u ;//Time spent in the gap
f     = T*F;//number of cycles

//Output
mprintf('Number of cycles that elase during transit of beam through input gap is %3.3f cycle',f);

//=============================================================================

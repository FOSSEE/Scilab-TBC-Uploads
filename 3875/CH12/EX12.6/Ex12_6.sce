clc;
clear;
h=6.63*10^-34 //Plancks constant in J-s
m=9.1*10^-31 //mass in kg
E=2 //energy in eV
V_0=20 //height of potential barrier in eV
alpha=0.3*10^-9 //width of potental barrier in m
e=1.6*10^-19 //charge in C

//calculation
Gamma=((sqrt(2*m*(V_0-E)))*1.6*10^-19)/h //in m^-1
T=(16*E*(V_0-E)*exp(-2*Gamma*alpha))/V_0^2
mprintf("The tunneling probability is = %1.2f",T)
//The answer provided in the textbook is wrong.

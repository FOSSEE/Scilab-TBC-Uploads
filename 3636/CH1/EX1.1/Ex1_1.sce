clc;
clear;
V=20000 //potential in Volts
e=1.602*10^-19 //electronic charge in C
m=9.1*10^-31 //mass of electron in kg
c=3*10^8 //speed of light in m/s

//Calculation
u=sqrt((2*V*e)/m) //speed u after acceleration through a potential V in m/s
mu=1/sqrt(1-(u/c)^2) //mass of electron moving with velocity mu in kg
delm=mu-1 //change in mass

mprintf("The percentage change in mass of the electron is %1.1f %%",delm*100)

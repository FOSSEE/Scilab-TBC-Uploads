
//To determine the effciency of a high frequency induction furnance
//Page 294
clc;
clear;
t=10*60; //Time Taken to rise temperature in seconds
M=1.815; //Mass of aluminium melted
Pi=5*(10^3); //Power Input
Ti=15; //Initial Temperature
Tm=660; //Melting Point of Al
SHAl=0.212; //Specific heat of Al
LHFAl=76.8*(10^3); //Laten Heat of fusin in Cal/Kg

Hm=M*LHFAl; //Heat required to melt Al
Htr=SHAl*M*1000*(Tm-Ti); //Heat required to raise the temperature
HTot=Hm+Htr; //Total Heat Required

HToth=HTot*3600/t; //Heat required per hour

Po=HToth*4.2/3600; //Power Output

eff=Po*100/Pi; //Efficiency

printf('The Effciency of the High Frequency Induction Furnace is %g percent\n',eff)

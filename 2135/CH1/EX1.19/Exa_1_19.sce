//Exa 1.19
clc;
clear;
close;
format('v',6);

//Given Data :
//epsilon=0.2*t-5*10^-4*t^2;//mV
t_ice=0;//degree C
epsilon_ice=0.2*t_ice-5*10^-4*t_ice^2;//mV
t_steam=100;//degree C
epsilon_steam=0.2*t_steam-5*10^-4*t_steam^2;//mV
//At t=60;
t=60;//degree C
epsilon=0.2*t-5*10^-4*t^2;//mV
reading=(t_steam-t_ice)/(epsilon_steam-epsilon_ice)*(epsilon-epsilon_ice)
disp(reading,"Thermometer will read(degree C) : ");

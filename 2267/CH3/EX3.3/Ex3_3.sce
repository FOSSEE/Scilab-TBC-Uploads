//Part A Chapter 3 Example 3
clc;
clear;
close;
format('v',6);
t_ice=0;//degree C
E0=0.003*t_ice-5*10^-7*t_ice^2+0.5*10^-3;//V
t_steam=100;//degree C
E100=0.003*t_steam-5*10^-7*t_steam^2+0.5*10^-3;//V
t=30;//degree C
E30=0.003*t-5*10^-7*t^2+0.5*10^-3;//V
t=((E30-E0)/(E100-E0))*(t_steam-t_ice);//degree C
disp("Temperature shown by thermometer = "+string(t)+" degree C");
//Answer given in the book is wrong.

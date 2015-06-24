//example 2
//exit velocity of steam from nozzle
clear
clc
hi=3051.2 //initial specific heat of enthalpy in kJ/kg
si=7.1228 //initial specific entropy in kJ/kg-K
se=si //final specific entropy 
Pe=0.3 //final pressure in MPa
disp('from steam table,various properties at final state are ')
he=2780.2 //final specific heat of enthalpy in kJ/kg-K
Te=159.1 //final temperature in celsius
vi=30 //velocity with which steam enters the nozzle in m/s
ve=((2*(hi-he)+(vi^2/1000))*1000)^0.5 //final velocity of steam with which it exits in m/s
printf("\n hence,exit velocity of the steam from the nozzle is ve=%.0f m/s.\n",ve)
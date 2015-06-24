//ques4 
//calculating amount of water vapour condensed on cooling
clear
clc
//from example 3
w1=0.0255;//w1=w, humidity ratio at initial temperature
ma=108.6;//mass of air in kg
P=100;//kPa net pressure
//at 5 C mixture is saturated so Pv2=Pg2
Pg2=0.8721;
Pv2=Pg2;
w2=0.622*Pv2/(P-Pg2);
mc=ma*(w1-w2);
printf('Mass of vapour condense = %.3f kg \n',mc); 
//Caption:Find (a)current delievered by each machine and (b)terminal voltage
//Exa:2.1
clc;
clear;
close;
//for 50kw generator
I_1=50*1000/500;//full load current in ampere
V_1=0.06*500;//full load voltage drop in volts
V_1pi=V_1/I_1;//voltage drop per ampere of current supply in volts/ampere
//for 100kw generator
I_2=100*1000/500;//full load current in ampere
V_2=0.04*500;//full load voltage drop in volts
V_2pi=V_2/I_2;//voltage drop per ampere of current supply in volts/ampere
i_1=250/(1+(V_1pi/V_2pi));//in amperes
i_2=250/(1+(V_2pi/V_1pi));//in amperes
disp(i_1,'(a) Current delievered in 50kw generator (in amperes)=');
disp(i_2,'    Current delievered in 100kw generator (in amperes)=');
V_t=500-V_1pi*i_1;//in volts
disp(V_t,'(b) Terminal voltage (in volts)=')
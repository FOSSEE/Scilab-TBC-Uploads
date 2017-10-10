
//OptoElectronics and Fibre Optics Communication, by C.K Sarkar and B.C Sarkar
//Example 8.2
//OS=Windows 10
////Scilab version Scilab 6.0.0-beta-2(64 bit)
clc;
clear;

//given
Cd=5e-12;//capacitance in Farad
B=10e6;//Bandwidth in Hz

u=2*3.14*B*Cd;
RL=1/u;//Load resistance in ohms
mprintf("\n The load resistance is=%.2f *10^3ohms",RL/10^3);//multiplication factor to change unit from ohms to 10^3 ohms
v=2*3.14*RL*(10e-12);
B1=1/v;//bandwidth when the system is connected to load resistance
mprintf("\n Bandwidth when system is connected to load resistance is=%.2f MHz",B1/1e6);
//multiplcation factor to change unit to MHz from Hz

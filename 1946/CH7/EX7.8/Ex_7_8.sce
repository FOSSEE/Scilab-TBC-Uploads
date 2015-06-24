// Example 7.8;//overall power conversion efficiency 
clc;
clear;
close;
Pc=150*10^-6;//Optical power in watt
If=25;//forward current in milli ampere
Vf=2.5;//forward voltage in volts
P=If*10^-3*If;//power in watt
npc=((Pc/P)*10^3);//overall power conversion efficiency
disp(npc,"overall power conversion efficiency in percentage")

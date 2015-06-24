
// Example 6.6 //overall power conversion efficiency 
clc;
clear;
close;
Pc=200*10^-6;//Optical power in Watt
If=25;//forward current in milli Ampere
Vf=1.5;//forward voltage in Volts
P=If*10^-3*Vf;//power in Watt
npc=((Pc/P));//overall power conversion efficiency
disp(npc*100,"overall power conversion efficiency in percentage")
//answer is wrong in the textbook

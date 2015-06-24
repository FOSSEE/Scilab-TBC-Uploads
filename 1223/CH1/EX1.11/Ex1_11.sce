clear;
clc;
//Example 1.11 
V_Z=5.6;//(V)Zener diode breakdown voltage
r_z=0;//(Ohm)Zener resistance
I=3;//(mA)current in the diode
V_PS=10;//(V)
//I=(V_PS-V_Z)/R
R=(V_PS-V_Z)/I;
printf('\nresistance=%.3f KOhm\n',R)

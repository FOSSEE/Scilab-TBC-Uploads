//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 102
clear;
clc;

//Given Data

Vz=18;//zener breakdown voltage in volts
Izmax=60;//maximum safe current through diode in milli-amperes 
R=150;//series resistance in ohms
Rl=1D3;//load resistance in ohms

//Solution

Vinmin=((Rl+R)/Rl)*Vz;//minimum value of input voltage
Iload=Vz/Rl*1000;//load current in milli-amperes
Imax=Izmax+Iload;//maximum current through battery in milli-amperes
Vinmax=Vz+Imax/1000*R;//maximum value of input voltage

printf("So the input voltage ranges from %.1f volts to %.1f volts",Vinmin,Vinmax);

//Tested on Windows 7 Ultimate 32-bit
//Chapter 3 Semiconductor Diodes and Miscellaneous Devices Pg no. 119 and 120
clear;
clc;

//Given Data

Irelay=10;//relay current in milli-amperes
Int=400//light intensity in lm/m^2
Rc_d=100D3;//cell resistance in ohms when it is dark
Rc_i=1200;//cell resistance in ohms when illumination is 500lm/m^2
V=30;//source voltage in volts

//Solution

R=V/Irelay*1000-Rc_i;//series resistance in ohms
Id=V/(R+Rc_d)*1000;//dark current in milli-amperes

printf("Series resistance R = %d ohms\n Dark current = %.3f mA ",R,Id)

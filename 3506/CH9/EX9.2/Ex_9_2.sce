//Optical Fiber communication by A selvarajan
//example 9.2
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
PASE=1e-3;//amplified spontaneous emission power in W
Gdb=20;//optical amplifier gain in dB
G=10^(Gdb/10);//optical amplifier gain in normal scale
delta_newbynew=5e-6;//fractional bandwidth
h=6.6e-34;//planck's constant
ns=PASE/((G-1)*h/delta_newbynew);//noise factor
mprintf('noise factor is=%fx10^21',ns/1e21);// division by 1e21 to convert the unit from Hz to 10^21 Hz
// The answer given in textbook is wrong

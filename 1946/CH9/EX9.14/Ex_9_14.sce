// Example 9.14;//output photo current
clc;
clear;
close;
R=0.40;//RESPONSIVITY IN AMPERE PER WATT
If=100;//incident flus in micro watt per milli meter square
Ae=2;//active area in mili mtere square
Po=If*Ae;//incident optical power in micro watt
Ip=Po*R*10^-3;//output photo current IN MIILI AMPERE
disp(Ip,"output photo current in milli ampere is")

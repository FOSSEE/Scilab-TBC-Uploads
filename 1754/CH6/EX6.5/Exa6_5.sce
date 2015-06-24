//Exa 6.5
clc;
clear;
close;
//given data
gm=2;//in milli-mho
RL=10;//in Kohm
disp("assuming rd>>RL");
Av=gm*10^-3*RL*10^3;//unitless
disp(Av,"Voltage amplification : ");

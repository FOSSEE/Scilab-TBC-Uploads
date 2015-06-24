//Determine volume ratio of Al and B in aluminium boron composite
//Ex:19.2
clc;
clear;
close;
ec=210;//in GPa
ea=71;//in GPa
eb=440;//in GPa
va=(ec-eb)/(ea-eb);
disp(va,"Va = ");
vb=1-va;
disp(vb,"Vb = ");
c=vb/va;
disp(c,"Volume ratio = ");
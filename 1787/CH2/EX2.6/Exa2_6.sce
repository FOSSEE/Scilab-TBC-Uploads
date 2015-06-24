//Exa 2.6
clc;
clear;
close;
//given data
ni=1.4*10^18;//in atoms/m^3
Nd=1.4*10^24;//in atoms/m^3
n=Nd;//in atoms/m^3
p=ni^2/n;//in atoms/m^3
ratio=n/p;//unitless
disp(p,"Concentration of holes in per m^3 : ");
disp(ratio,"Ratio of electron to hole concentration : ");
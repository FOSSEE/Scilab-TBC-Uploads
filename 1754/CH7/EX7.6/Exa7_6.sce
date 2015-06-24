//Exa 7.6
clc;
clear;
close;
//Given data
n=10;//turns/cm
n=n*10^2;//turns/meter
i=2;//in Ampere
B=1;//in weber/meter^2
meu_o=4*%pi*10^-7;//permeability of free space in weber/amp-meter
H=n*i;//in amp-turn/meter
disp(H,"Magnetising Force in amp-turn/meter : ");0
//Formula : B=meu_o*(H+I)
I=B/meu_o-H;//in amp-turn/meter
disp(I,"Magnetisation of material in amp-turn/meter :");
meu_r=B/(meu_o*H);//relative permeability(unitless)
disp(meu_r,"Relative Permeability : ");
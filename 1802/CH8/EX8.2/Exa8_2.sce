//Exa 8.2
clc;
clear;
close;
//given data
d=1;//in cm
d=d*10^-2;//in meter
D=1.8;//in cm
D=D*10^-2;//in meter
epsilon_r=4;//permittivity of insulation
C=0.024*epsilon_r/log10(D/d);//in uF/Km
disp(C,"Capacitance/km of the fibre in uF :  ");
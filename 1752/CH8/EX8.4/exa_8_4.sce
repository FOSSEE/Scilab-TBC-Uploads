//Exa 8.4
clc;
clear;
close;
//given data
Fi=0.00014;// in m^2 degree C/W
hi=2000;// in W/m^2degree C
Fo=0.00015;// in m^2 degree C/W
ho=1000;// in W/m^2degree C
di=3*10^-2;// in m
do=4*10^-2;//in m
ro=do/2;
ri=di/2;
k=53;// in W/m degree C
Uo=1/(do/di*1/hi+ do/(2*k)*log(ro/ri) + 1/ho + do*Fi/di + Fo);
disp(Uo,"The overall heat transfer coefficient in W/m^2 degree C")


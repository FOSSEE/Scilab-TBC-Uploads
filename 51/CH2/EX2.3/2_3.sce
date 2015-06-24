clc;
clear;
T=10;//degree C
dmax=40;//m
p=598;//mm Hg
//pressure in lake at any depth h is given by p=gamma*h + local barometric pressure 'pbar'
//pbar/(gamma Hg)=598 mm= .598 m ; (gamma Hg) = 133kN/m^3
pbar=0.598*133;//kN/m^2
//(gamma water)=9.804 kN/m^3 at 10 dergree C
p=(9.804*40)+pbar;//kN/m^2
disp("kPa",pbar,"The local barometric pressure=")
disp("kPa",p,"The absolute pressure at a depth of 40 m in the lake=")
 
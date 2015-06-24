//Exa 1.8
clc;
clear;
close;
//Given data
R=1;//in kOhm
RL=5;//in kOhm
VZ=10;//in volt
Vo=10;//in volt
P=250;//in mW
IL=Vo/RL;//in mA
IZmin=0;//in mA
IZmax=P/VZ;//in mA
Imin=IZmin+IL;//in mA
Imax=IZmax+IL;//in mA
Vin_min=VZ+Imin*10^-3*R*10^3;//in volt
Vin_max=VZ+Imax*10^-3*R*10^3;//in volt
disp("The input voltage ranges from "+string(Vin_min)+"V to "+string(Vin_max)+"V");
//Exa 3.8
clc;
clear;
close;
// given data
AV=-8;//unitless
Vin=-1;//in Volts
Imax=15;//in uA
Vo=AV*Vin;//in Volts
//Formula : Vo=Imax*R2min
R2min=Vo/(Imax*10^-6);//in kohm
R1min=-Vin/(Imax*10^-6);//in kohm
disp(R2min/1000,"Required value of R2 in kohm is :")
disp(R1min/1000,"Required value of R1 in kohm is :")
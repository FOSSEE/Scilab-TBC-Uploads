//Exa 1.5
clc;
clear;
close;
//Given data
Vin=40;//in volt
VZ=10;//in volt
Vo=10;//in volt
IZmax=50;//in mA
IL=0;//in mA
//Formula : I=IZ+IL=IZmax+0
I=IZmax+0;//in mA
//Formula : VZ=Vin-R*I
Rmin=(Vin-VZ)/(I*10^-3);//in Ohm
disp(Rmin,"Minimum value of resistance in Ohm : ");
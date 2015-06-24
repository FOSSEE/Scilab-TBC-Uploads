//Example 1_20
clc;
clear;close;

//Given data
V=800;//V
I=110;//A
Es=12;//V
Im=250;//mA
Ish=600;//mA
VG=2.4;//V
IG=50;//mA
IGm=100;//mA
VGm=3;//V
Rs=Es/(Ish*10^-3);//ohm
disp(Rs,"Value of Rs in ohm ");
R1=Es/(Im*10^-3)-Rs;//ohm(Assumed R2 is not connected)
//Rs_plus_R1>=Es/(IGm*10^-3);//ohm
Rs_plus_R1=Es/(IGm*10^-3);//ohm
R1_Lower=Rs_plus_R1-Rs;//ohm
//Rs_plus_R1<=(Es-VG)/(IGm*10^-3);//ohm
Rs_plus_R1=(Es-VG)/(IG*10^-3);//ohm
R1_Upper=Rs_plus_R1-Rs;//ohm
disp("R1 must be more than "+string(R1_Lower)+" ohm and less than "+string(R1_Upper)+" ohm.")
disp("Let R1 is 125 ohm.");
R1=125;//ohm
//R2*Es/(R1+R2+Rs)<=VGm
R2=(VGm*R1+VGm*Rs)/(Es-VGm);//ohm
disp("R2<="+string(R2)+" ohm ")
disp("Let R2 is 48 ohm.");

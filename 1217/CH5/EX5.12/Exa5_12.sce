// Exa 5.12
clc;
clear;
close;
// given data 
VCC=15;//in Volt
T=10;//in mSec
ILED=20;//in mA
Vf=1.4;//in Volt
VBE=0.7;//in Volt
VCEsat=0.2;//in Volt
C=0.22;//in uF
R=T*10^-3/(1.1*C*10^-6);//in ohm
//output of the device 
Vo=VCC-2*VBE-VCEsat;
R5=(Vo-Vf)/(ILED*10^-3);//in ohm
disp(R/1000,"Value of R in Kohm is ; ")
disp(Vo,"Output of the device in volt is : ")
disp(R5,"Value of RB in Kohm is ; ")
disp("Note : To improve the noise immunity of the device, a 0.01 uF capacitor is connected between pin 5 and ground. ")
//Exa 4.1
clc;
clear;
close;
//Given data
Omega_Z1=0;//in Radian/sec
Omega_Z2=10;//in Radian/sec
Omega_P1=100;//in Radian/sec
Omega_P2=25;//in Radian/sec
WL=sqrt(Omega_P1^2+Omega_P2^2-2*Omega_Z1^2-2*Omega_Z2^2);//in radian/sec
disp(WL,"Approximate value of lower 3dB Frequency in radian/sec :  ");
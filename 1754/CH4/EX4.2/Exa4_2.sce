//Exa 4.2
clc;
clear;
close;
//Given data
Omega_P1=10^4;//in Radian/sec
Omega_P2=2*10^4;//in Radian/sec
Omega_Z1=10^5;//in Radian/sec
omegaH=1/sqrt(1/Omega_P1^2+1/Omega_P2^2-2/Omega_Z1^2);//in radian/sec
disp(round(omegaH),"Approximate value of lower 3dB Frequency in radian/sec :  ");
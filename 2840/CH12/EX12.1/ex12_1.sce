clc;
clear all;
Tc=7.26;//critical tempreture in kelvin
H0=8*1e5/(4*%pi);//magnetic field at 0K
T=5;//tempreture in kelvin
Hc=H0*(1-(T/Tc)^2);//megnrtic field at 5K
disp('A/m',Hc,'megnrtic field at 5K tempreture');
//there is variation in the answer than book.. checked in calculator too..

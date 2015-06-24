clc;
clear all;
HcT=2*1e5/(4*%pi);//magnetic field intensity at T K
Hc0=3*1e5/(4*%pi);//magnetic field intensity at T=0K
Tc=3.69;//given temperature in K
T=sqrt(1-(HcT/Hc0))*Tc;//tempreture in K
disp('K',T,'temperature of superconducture is=');

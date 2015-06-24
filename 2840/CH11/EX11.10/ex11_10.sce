clc;
clear all;
P=8.9*1e-3;//resistivity of doped sillicon
Rh=3.6*1e-4;//hall coefficient
e=1.6*1e-19;//charge of electron
ne=3*%pi/(8*Rh*e);//carrier density of electron
disp('m^-3',ne,'carrier density of electron is=');
ue=1/(P*ne*e);//mobility of electon
disp('m^2*V^-1*s^-1',ue,'mobility of electon is=')

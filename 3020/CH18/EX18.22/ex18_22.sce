clc;
clear all;
Rh=3.66e-11;//hall coefficient in m^3/(A*s)
sigma=112e7;//conductivity in ohm^-1* m^-1
e=1.6e-19;
n=3*%pi/(8*Rh*e);//concentration of electron in m^-3
disp('m^-3',n,'concentration of electron:')
ue=sigma/(n*e);//elctron mobility at room temperature
disp('m^2/(V*s)',ue,'elctron mobility at room temperature is:');

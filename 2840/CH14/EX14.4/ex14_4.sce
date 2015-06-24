clc;
clear all;
er=12;//relative permittivity
N=5*1e28;//atoms/m^3
e0=8.854*1e-12;//permittivity of vacume
x=(er-1)/(er+2);
alpha=(3*e0/N)*x;//electrical polarizability
disp('F*m^2',alpha,'electrical polarizability');

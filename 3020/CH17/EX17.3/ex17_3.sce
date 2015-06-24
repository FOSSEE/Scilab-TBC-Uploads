clc;
clear all;
rhoNi=63e-9;//resistivity of Ni in ohm*m
rhoCr=129e-9;//resistivity of Cr in ohm*m
rhoNiCr=1120e-9;//resistivity of 80% Ni +20% Cr in ohm*m
X=0.8;//atomic fraction
C=rhoNiCr/(X*(1-X));//'Nordheim constant 
disp('ohm*m',C,'Nordheim constant is:')

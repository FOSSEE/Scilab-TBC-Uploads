clc;
clear all;
E=1000;//applied electrical field
P=4.3E-8;//polarisation
e0=8.854e-12;//permittivity of vacume
er=1+(P/(E*e0));//relative permittivity of NACl
disp('',er,'relative permittivity of NACl is:')

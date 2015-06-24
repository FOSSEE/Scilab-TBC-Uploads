clc;
clear all;
Rh=3.66e-4;//hall coefficient of specimen
rho=8.93e-3;//resistivity of specimen
e=1.6e-19;//charge of electron
nh=1/(Rh*e);//carrier concentration
disp('m^-3',nh,'carrier concentration is');
u=Rh/rho;//mobility of specimen
disp('m^2/(V*s)',u,'mobility of specimen')

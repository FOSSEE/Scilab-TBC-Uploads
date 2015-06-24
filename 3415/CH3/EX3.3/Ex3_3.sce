//fiber optic communications by joseph c. palais
//example 3.3
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
lambda=1.55e-6*1e9//wave length in nm
lambda0=1.3e-6*1e9//Zero dispersion wave length in nm
M0=-0.095//slope at zero dispersion wave length ps/(nm^2xKm)

//to find
M=(M0/4)*(lambda-(lambda0)^4/(lambda)^3)//Material dispersion ps/(nmxKm)

mprintf("Material dispersion=%fps/(nm.km)",M)

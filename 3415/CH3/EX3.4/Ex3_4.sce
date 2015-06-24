//fiber optic communications by joseph c. palais
//example 3.4
//OS=Windows XP sp3
//Scilab version 5.4.1
clc
clear all
//given
lambda=1.32e-6*1e9//wave length in nm
lambda0=1.3e-6*1e9//Zero dispersion wave length in nm
M0=-0.095//slope at zero dispersion wave length ps/(nm^2xKm)
sw=2//spectral width in nm
d=10// length of material in Km
//to find
M1=abs((M0/4)*(lambda-(lambda0)^4/(lambda)^3))//Material dispersion ps/(nmxKm)
delta_taubyL=M1*sw*d// pulse spreading per unit length in ps 
mprintf("Material dispersion=%fps/(nm.km)",M1)
mprintf(" \nProduces Pulse spreading=%fns",delta_taubyL*1e-3)//multiplication by 1e-3 converts unit from ps to ns

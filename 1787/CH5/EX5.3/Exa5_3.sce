//Exa 5.3
clc;
clear;
close;
//given data
Ecf=0.3;//in Volts
T=27+273;//in Kelvin
delT=55;//in degree centigrade
//formula : Ecf=Ec-Ef=K*T*log(nc/ND)
//let K*log(nc/ND)=y
//Ecf=Ec-Ef=T*y
y=Ecf/T;//assumed
Tnew=273+55;//in Kelvin
EcfNEW=y*Tnew;//in Volts
disp(EcfNEW,"New position of fermi level is(eV) : ");
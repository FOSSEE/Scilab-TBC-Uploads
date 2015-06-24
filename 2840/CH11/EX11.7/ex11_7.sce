clc;
clear all;
//let Ef-Ev=0.4eV=x and Ef1-Ev=y
x=0.4;//Ef-Ev in eV
k=1.38*1e-34;//boltzmann constant
T=300;//tempreture in kelvin
//now p=Nv*exp(-x/(k*T))=Na and p'=Nv*exp(-y/(k*T))=2Na so ratio of this 2 is 2=exp(x-y/(k*T))
y=x-k*T*log(2);//Ef1-Ev in eV
disp('eV',y,'Ef1-Ev in eV is=')

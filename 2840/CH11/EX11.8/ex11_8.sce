clc;
clear all;
//let Ec1-Ef=0.3eV=x and Ec2-Ef=y
x=0.3;//Ec-Ef in eV
T1=300;//tempreture in kelvin
T2=330;//tempreture in kelvin
//Ec-Ef=k*T*log(Nc/Nd) so..
y=T2*x/T1;//Ec2-Ef in eV
disp('eV',y,'Ec2-Ef in eV is=');


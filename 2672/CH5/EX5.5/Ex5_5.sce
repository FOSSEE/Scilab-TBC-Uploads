//Example 5_5
clc;
clear;
close;
format('v',6);
//Part(a) Derivation
//Part(b)
//given data : 
mu_p=500;//cm^2/V-s
q=1.6*10^-19;//C/electron
rho=3;//ohm-cm
V0=0.4;//V//Barrier Height
Vd=4.5;//V//Reverse Voltage
D=40;//mils
D=D*10^-3;//inch
D=D*2.54;//cm/in
A=%pi/4*D^2;//cm^2
NA=1/rho/mu_p/q;//cm^-3
W=sqrt((V0+Vd)/(14.13*10^10));//m^2
Vj=V0+Vd;//V
CT=2.9*10^-4*sqrt(NA/Vj)*A;///pF
disp(CT,"CT(pF) : ");
//Answer given in the textbook is not accurate.

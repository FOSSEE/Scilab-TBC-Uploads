//Ex 5.6.1
clc;clear;close;
format('v',6);

//Given : 
VTN=0.7;//V
W=45;//micro m
L=4;//micro m
mu_n=700;//cm^2/V-s
t_ox=450;//Angstrum
epsilon_ox=3.9*8.85*10^-14;//F/cm
VGS=2*VTN;//V
Kn=(W*10^-4)*mu_n*epsilon_ox/(2*(L*10^-4)*(t_ox*10^-8));//A/V^2
Kn=Kn*10^3;//mA/V^2
ID=Kn*(VGS-VTN)^2;//A
disp(ID,"Current in mA : ");
//Answer is wrong in the book. Calculation mistake whle calculating value for Kn.

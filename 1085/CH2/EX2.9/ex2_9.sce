//Exam:2.9
clc;
clear;
close;
n_1=1;//electron excited from ground state
h=6.62*10^-34;//Planck constant
c=3*10^8;//speed of light
E_o=8.825*10^-12;//permittivity of free space
e=1.6*10^-19;//electron charge(in C)
m=9.11*10^-31;//mass of electron(in Kg)
E_1=10.2;//energy excites the hydrogen from ground level(in eV)
K=m*e^4/(8*(E_o^2)*(h^2))//in joule
K_e=K/e;//in eV
//E_1=K_e*((1/n_1^2)-(1/n^2))
//1/(n^2)=1/(n_1^2)-E_1/K_e
//n^2=1/(1/(n_1^2)-E_1/K_e)
n=(1/(1/(n_1^2)-E_1/K_e))^(1/2);//principal quntum number when 10.2 eV energy excites electron
disp(ceil(n),'principal quntum number when 10.2 eV energy excites electron=');
W_1=h*c/(E_1*e)*10^10;//wavelength of radiation when 10.2 eV energy excites electron
disp(W_1,'wavelength of radiation when 10.2 eV energy excites electron(in A)=')
E_2=12.09;//energy excites the hydrogen from ground level(in eV)
n_2=(1/(1/(n_1^2)-E_2/K_e))^(1/2);//principal quntum number when 12.09 eV energy excites electron
W_2=h*c/(E_2*e)*10^10;//wavelength of radiation when 12.09 eV energy excites electron
disp(ceil(n_2),'principal quntum number when 12.09 eV energy excites electron=')
disp(W_2,'wavelength of radiation when 12.09 eV energy excites electron(in A)=')
//Ex 2.12.5
clc;clear;close;
format('v',8);

//Given : 
Vj=0.5;//Volt
V=-4.5;//Volt
rho_p=5*10^-2;//ohm-m
epsilon_r=12;//for Si
epsilon_o=8.854*10^-12;//permitivity
q=1.6*10^-19;//Coulomb
CT=100*10^-12;//F
mu_p=500*10^-4;//m^2/V-s
sigma_p=1/rho_p;//(ohm-m)^-1
NA=sigma_p/q/mu_p;//per m^3
W=sqrt(2*epsilon_r*epsilon_o*(Vj-V)/q/NA);//m
A=CT*W/(epsilon_r*epsilon_o);//
r=sqrt(A/%pi);//m
D=2*r;//m
disp(D*10^6,"Diameter(micro meter) : ");
//Answer is wrong in the textbook. Sqrt is not taken while calculatng W value and also other mistakes.

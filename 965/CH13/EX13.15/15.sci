clc;
clear all;
disp("rate of diffusion")
T=273;// K
D=0.17;// cm^2/s
Ra=82.06;// cm^2atm/(g mole K)
A=1;//m^2
pA1=90/760;// atm
pA2=20/760;// atm
pB1=1-pA1;
pB2=1-pA2;
pBlm=(pB2-pB1)/log(pB2/pB1);
G=82.06;
L=3.5*10^(-3);
p=1;
Na=(D*A*p/(Ra*T*L))*(pA1-pA2)/pBlm;
disp("gm moles/s",Na,"rate of diffusion =")





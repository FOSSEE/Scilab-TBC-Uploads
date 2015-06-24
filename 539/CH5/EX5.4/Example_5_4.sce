//Diffusion Coefficient Determination

clear;
clc;

printf("\tExample 5.4\n");

T=550+273;            //in K
D0=1.2*10^-4;  //Temperature independent preexponential in m^2/s
Qd=131000;            //Activation energy in J/mol-K
R=8.31;               //Universal Gas constt

D=D0*exp(-Qd/(R*T));

printf("\nDiffusion coefficient is %.1f * 10^-13 m^2/s\n",D/10^-13);

//End
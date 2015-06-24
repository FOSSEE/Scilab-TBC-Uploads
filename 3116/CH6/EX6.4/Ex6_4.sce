

clc
//given that
T=550+273 // temperature of aluminium in K
D_0=1.2*10^-4 //Temperature independent preexponential in m^2/s
Q_d=131000 //Activation energy in J/mol-K
R=8.31  //Universal Gas constant
printf("Example 6.4\n");
D=D_0*exp(-Q_d/(R*T));

printf("\n Diffusion coefficient is %.1e m^2/s\n",D);


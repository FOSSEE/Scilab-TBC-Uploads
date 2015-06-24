clc();
clear;
//Given :
e0 = 8.85*10^-12 ; // dielectric constant in farad/m
er1 = 1.006715 ; //relative dielectric constant
er2 = 1.005970;// relative dielectric constant
T1 = 300 ; // Temperature in K  (273+27 = 300 K)
T2 = 450; // Temperature in K  (273 + 177 = 450 K)
k = 1.38*10^-23; // in J/K
N = 2.44*10^25 ; // molecules/m^3
//e0*(er1 - er2)= ((N*mu_p^2)/(3*k))*((1/T1)- (1/T2))
mu_p = sqrt((e0*(er1 - er2)*3*k)/(((1/T1)-(1/T2))* N)); //dipole moment in C m
D = 3.3*10^-30; // dipole of 1 Debye is equal to 3.33 x 10^-30 C m 
printf("Dipole moment = %.2f debye \n",mu_p/D);
//e0*(er1 - 1) = N*(alpha_e + alpha_i + (mu_p^2/3*k*T1))
Sum = ((e0*(er1 - 1))/N) - ((mu_p)^2/(3*k*T1)); // alpha_e + alpha_i   in farad m^2
printf("Sum =  %.1f x 10^-39 farad m^2",Sum*10^39);

// 5.3
clc;
eta=0.64;
u=0.1;
alpha_1=atand(2*eta*u/(1-u^2))
printf("\nphase displacement for the fundamental=%.2f degree",alpha_1)
u=0.5;
alpha_5=atand(2*eta*u/(1-u^2))
printf("\nphase displacement for the 5th harmonic=%.2f degree",alpha_5)
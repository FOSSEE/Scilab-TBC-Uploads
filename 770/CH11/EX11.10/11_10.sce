clear;
clc;

//Example - 11.10
//Page number - 400
printf("Example - 11.10 and Page number - 400\n\n");

//Given
x_A = 0.20;// Mole fraction of A
x_B = 0.35;// Mole fraction of B
x_C = 0.45;// Mole fraction of C

phi_A = 0.7;// Fugacity coefficient of A
phi_B = 0.6;// Fugacity coefficient of B
phi_C = 0.9;// Fugacity coefficient of C

P = 6.08;//[MPa] - Pressure
T = 384;//[K] - Temperature

//We know that
//log(phi) = x_1*log(phi_) + x_2*log(phi_2) + x_3*log(phi_3)
log_phi = x_A*log(phi_A) + x_B*log(phi_B) + x_C*log(phi_C);// Fugacity coefficient
phi = exp(log_phi);

//Thus fugacity is given by,
f_mixture = phi*P;//[MPa]

printf("The fugacity of the mixture is %f MPa",f_mixture);
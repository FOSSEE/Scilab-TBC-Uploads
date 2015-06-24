clear;
clc;

// Example - 16.2
// Page number - 566
printf("Example - 16.2 and Page number - 566\n\n");

// Given
x_C2H6_1 = 0.33*10^(-4);// Solubility of ethane in water at 25 C and 1 bar

//componenet 1 : ethane (1)
//componenet 2 : water (2)

// Z = 1 - 7.63*10^(3)*P - 7.22*10^(-5)*P^(2)

//The phase equilibrium equation of ethane is
//f_1_V = x_1*H_1
//since vapour is pure gas,  f_1_V = x_1*H_1   or, phi_1*P = x_1*H_1,  where 'phi_1' is fugacity coefficient of pure ethane
// log(phi) = integral('Z-1)/P) from limit '0' to 'P'

P1 = 0;
P2 = 1;
P3 = 35;
intgral = integrate('(1-7.63*10^(-3)*P-7.22*10^(-5)*P^(2)-1)/P','P',P1,P2);
phi_1_1 = exp(intgral);// - Fugacity coefficient of ethane at 1 bar
f_1_1 = phi_1_1*P2;//[bar] - Fugacity of ethane at 1 bar

//Similarly
intgral_1 = integrate('(1-7.63*10^(-3)*P-7.22*10^(-5)*P^(2)-1)/P','P',P1,P3);
phi_1_35 = exp(intgral_1);// Fugacity coefficient of ethane at 35 bar
f_1_35 = phi_1_35*P3;//[bar] - Fugacity of ethane at 35 bar

// At ethane pressure of 1 bar ,  x_C2H6_1*H_1 = phi_1_1
H_1 = phi_1_1/x_C2H6_1;//[bar] - Henry's constant

// At ethane pressure of 35 bar ,  x_C2H6_35*H_1 = phi_1_35
x_C2H6_35 = f_1_35/H_1;// Solubility of ethane at 35 bar pressure

printf("The solubility of ethane at 35 bar is given by   x_C2H6 = %e",x_C2H6_35);


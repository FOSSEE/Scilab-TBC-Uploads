clear;
clc;

//Example - 17.14
//Page number - 614
printf("Example - 17.14 and Page number - 614\n\n");

// Given
T = 25 + 298.15;//[K] - Temperature
R = 8.314;//[J/mol-K]
delta_G_298 = -1000;//[J] - Gibbs free energy change at 298 K

// G_E/(R*T) = x_1*x_2

// We know that  delta_G_rkn = - R*T*log(K), therefore
K = exp(-delta_G_298/(R*T));

//(1)
// Let x_1 is the mole fraction of A and x_2 be the mole fraction of B
// If A and B form an ideal mixture then,
Ky = 1;
// and K = Kx = x_2/x_1
// and at equilibrium x_2/x_1 = K
// (1-x_1)/x_1 = K
x_1 = 1/(1+K);

printf(" (1).The equilibrium composition (for ideal behaviour) is given by x_1 = %f\n\n",x_1);

//(2)
// The activity coefficients are given by
// log(Y1) = [del(n*G_E/(R*T))/del(n_1)]_T,P,n_2 = x_2^(2)
// similarly, log(Y2) = x_1^(2)

// The equilibrium constant for the liquid phase reaction is given by
// K = Kx*Ky = (x_2*Y2)/(x_1*Y1) = (x_2*exp(x_1^(2)))/(x_1*exp(x_2^(2)))
// Solving the above equation we get

deff('[y]=f2(x_1)','y= K -((1-x_1)*exp(x_1^(2)))/(x_1*exp((1-x_1)^(2)))');
x_1_prime = fsolve(0.9,f2);

printf(" (2).The equilibrium composition (for non-ideal behaviour) is given by x_1 = %f\n\n",x_1_prime);



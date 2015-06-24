clear;
clc;

//Example - 15.23
//Page number - 547
printf("Example - 15.23 and Page number - 546\n\n");

//Given
T = 58.7;//[C]
P = 1;//[atm]
P = P*101325*10^(-3);//[kPa]

// log(P_sat) = 16.6758 - 3674.49/(t + 226.45) - For ethyl alcohol
// log(P_sat) = 13.8216 - 2697.55/(t + 224.37) - For hexane

// Let us take hexane as (1) and ethanol as (2)
// At 58.7 C
P_1_sat = exp(13.8216 - 2697.55/(T + 224.37));//[kPa]
P_2_sat = exp(16.6758 - 3674.49/(T + 226.45));//[kPa]

Y1 = P/P_1_sat;
Y2 = P/P_2_sat;

x_2 = 0.332;// Mol % of ethanol (given)
x_1 = 1 - x_2;// Mol % of hehane

// The van Laar parameters are given by
A = ((1 + (x_2*log(Y2))/(x_1*log(Y1)))^(2))*log(Y1);
B = ((1 + (x_1*log(Y1))/(x_2*log(Y2)))^(2))*log(Y2);

printf(" The value of van Laar parameters are, A = %f and B = %f \n\n",A,B);

// Now let us calvulate the distribution coefficient K
x_1_prime = 0.5;//[given]
x_2_prime = 1 - x_1_prime;

// The activity coefficients are thus given by
// log(Y1) = A/(1+ (A*x_1)/(B*x_2))^(2)
// log(Y2) = B/(1+ (B*x_2)/(A*x_1))^(2)

Y1_prime = exp(A/(1+ (A*x_1_prime)/(B*x_2_prime))^(2));
Y2_prime = exp(B/(1+ (B*x_2_prime)/(A*x_1_prime))^(2));
P_prime = x_1_prime*Y1_prime*P_1_sat + x_2_prime*Y2_prime*P_2_sat;

// We have,  K_1 = y_1/x_1 = Y1*P_1_sat/P
K_1 = Y1_prime*P_1_sat/P_prime;

printf(" The distribution coefficient is given by  K_1  =  %f\n",K_1)



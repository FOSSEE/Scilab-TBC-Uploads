clear;
clc;

//Example - 1.13
//Page number - 30
printf("Example - 1.13 and Page number - 30\n\n");

//Given
// Cp0=7.7+(0.04594*10^(-2)*T)+(0.2521*10^(-5)*T^(2))-(0.8587*10^(-9)*T^(3))
T_1 = 400;//[K]
T_2 = 500;//[K]

//(C)avg = q/(T_2 - T_1) = 1/(T_2 - T_1)*{(integrate('C','T',T_1,T_2))}
//(Cp0)avg = 1/(T_2 - T_1)*{(integrate('Cp0','T',T_1,T_2))}
Cp0_avg = (1/(T_2 - T_1))*integrate('7.7+(0.04594*10^(-2)*T)+(0.2521*10^(-5)*T^(2))-(0.8587*10^(-9)*T^(3))','T',T_1,T_2);

printf(" The mean heat capacity (Cp0_avg) for temerature range of 400 to 500 K is %f cal/mol-K",Cp0_avg);
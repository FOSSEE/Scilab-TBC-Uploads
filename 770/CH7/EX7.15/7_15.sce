clear;
clc;

//Example - 7.15
//Page number - 249
printf("Example - 7.15 and Page number - 249\n\n");

//Given
T_1 = 0;//[C] - Initial tempetaure
T_2 = 100;//[C] - Final temperature
// Beta = 1.0414*10^(-3) + 1.5672*10^(-6)*T + 5.148*10^(-8)*T^(2),   where T is in C
// At constant pressure  (1/V)*(dV/dT) = Beta
// or, d(log(V)) = Beta*dT
// Integrating  we get log(V_2/V_1) = integral(Beta*dT) from limit T_1 to T_2
integral = integrate('1.0414*10^(-3)+1.5672*10^(-6)*T+5.148*10^(-8)*T^(2)','T',T_1,T_2);

// log(V_2/V_1) = integral
// (V_2/V_1) = exp(integral)
// (V_2 - V_1)/V_1 = change = exp(integral) - 1;
change = exp(integral) - 1;
per_change = 100*change;

printf("The percentage change in volume = %f %%",per_change);


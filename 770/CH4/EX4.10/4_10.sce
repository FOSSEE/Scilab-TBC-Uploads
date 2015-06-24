clear;
clc;

//Example - 4.10
//Page number - 161
printf("Example - 4.10 and Page number - 161\n\n");

//Given
P_1 = 1;//[MPa] - Initial pressure
T_1 = 200 + 273.15;//[K] - Initial temperature
P_2 = 8;//[MPa] - Final pressure
Y = 1.4;// Index of expansion of gas
R = 1.987;//[cal/mol*K] - Universal gas constant
// Cp_0 = 7.7 + 0.04594*10^(-2)*T + 0.2521*10^(-5)*T^(2) - 0.8587*10^(-9)*T^(3), here T is in K and Cp_0 is in  cal/mol-K
a = 7.7;
b = 0.04594*10^(-2);
c = 0.2521*10^(-5);
d = - 0.8587*10^(-9);

// delta_S = integral((Cp_0/T)*dT) - R*log(P_2/P_1) = 0
// delta_S = integral(((a + b*T + c*T^(2) + d*T^(3))/T)*dT) - R*log(P_2/P_1) = 0
// delta_S = a*log(T_2/T_1) + b*(T_2 - T_1) + (c/2)*(T_2^(2) - T_1^(2)) + (d/3)*(T_2^(3) - T_1^(3)) - R*log(P_2/P_1) = 0
// Solving for T_2 in the above equation we get
deff('[y]=f(T_2)','y=a*log(T_2/T_1)+b*(T_2-T_1)+(c/2)*(T_2^(2)-T_1^(2))+(d/3)*(T_2^(3)-T_1^(3))-R*log(P_2/P_1)');
T_2 = fsolve(100,f);

// Now let us calculate the enthalpy change under these conditions 
delta_H_s = integrate('7.7+0.04594*10^(-2)*T+0.2521*10^(-5)*T^(2)-0.8587*10^(-9)*T^(3)','T',T_1,T_2);//[cal/mol]
delta_H_s = delta_H_s*4.184;//[J/mol]
// Therefore isentropic work done is
W = - delta_H_s;

printf(" (1).The exit temperature of steam is %f K\n",T_2);
printf("     The required work is %f J/mol\n\n",W);

//(2)
eff = 0.8;
delta_H_a = delta_H_s/eff;//[J/mol] - Actual enthalpy change
// Therefore actual work done is given by 
W_a = - delta_H_a;//[J/mol]

// Now we have to determine the exit temperature under actual conditions
// delta_H_a = integral(Cp_0*dT)  from limit T_1 = 473.15 K to T_2
// On putting the values and simplifying we get
// 7.7*T_2 + 0.02297*10^(-2)*T_2^(2) + 0.084*10^(-5)*T_2^(3) - 0.214675*10^(-9)*T_2^(4) - 6907.106 = 0

deff('[y]=f1(T_2_prime)','y=a*(T_2_prime-T_1)+(b/2)*(T_2_prime^(2)-T_1^(2))+(c/3)*(T_2_prime^(3)-T_1^(3))+(d/4)*(T_2_prime^(4)-T_1^(4))-(delta_H_a/4.184)');
T_2_prime = fsolve(100,f1);

printf(" (2).The exit temperature of steam is %f K\n",T_2_prime);
printf("     The required work is %f J/mol\n\n",W_a);


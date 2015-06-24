clear;
clc;

//Example - 17.10
//Page number - 609
printf("Example - 17.10 and Page number - 606\n\n");

// Given
// (1/2)*N2 + (1/2)*O2 - NO

R = 1.987;//[cal/mol-K]

delta_H_NO_298 = 21.600;//[kcal/mol] - Enthalpy of formation of S02 at 298.15 K
delta_G_NO_298 = 20.719;//[kcal/mol] - Gibbs free energy change for formation of SO2 at 298.15 K

// Cp_0 = a + b*T + c*T^(2) + d*T^(3)

a_N2 = 6.157;
a_O2 = 6.085;
a_NO = 6.461;
b_N2 = -0.03753*10^(-2);
b_O2 = 0.3631*10^(-2);
b_NO = 0.2358*10^(-2);
c_N2 = 0.1930*10^(-5);
c_O2 = -0.1709*10^(-5);
c_NO = -0.07705*10^(-5);
d_N2 = -0.6861*10^(-9);
d_O2 = 0.3133*10^(-9);
d_NO = 0.08729*10^(-9);

//(1)
T_1 = 298.15;//[K]

delta_H_rkn_298 = delta_H_NO_298;//[kcal]
delta_H_rkn_298 = delta_H_rkn_298*10^(3);//[cal]
delta_G_rkn_298 = delta_G_NO_298;//[kcal]
delta_G_rkn_298 = delta_G_rkn_298*10^(3);//[cal]

delta_a = a_NO - (a_N2/2) - (a_O2/2);
delta_b = b_NO - (b_N2/2) - (b_O2/2);
delta_c = c_NO - (c_N2/2) - (c_O2/2);
delta_d = d_NO - (d_N2/2) - (d_O2/2);

// delta_H_rkn_T = delta_H_rkn_298 + integrate('delta_a+(delta_b*T)+(delta_c*T^(2))+(delta_d*T^(3))','T',T_1,T);
// On simplification we get
// delta_H_rkn_T = 21584.63 - 0.033*T + 0.0365*10^(-2)*T^(2) - 0.0293*10^(-5)*T^(3) + 0.0685*10^(-9)*T^(4)

printf(" The expression for delta_H_rkn_T as a function of T is given by\n");
printf(" delta_H_rkn_T = 21584.63 - 0.033*T + 0.0365*10^(-2)*T^(2) - 0.0293*10^(-5)*T^(3) + 0.0685*10^(-9)*T^(4)\n\n");

// Now let us calculate K_298 (at 298 K)
// We know delta_G_rkn_298 = -R*T*log(K_298) 
K_298 = exp(-delta_G_rkn_298/(R*T_1));// Equilibrium constant at 298.15 K

// log(K_2/K_1) = integrate('delta_H_rkn_298/(R*T^(2))','T',T_1,T)
// On substituting the values and simplifying we get the expression
// log(K) = 1.5103 - 10862.92/T - 0.0166*log(T) + 1.84*10^(-4)*T - 7.35*10^(-8)*T^(2) + 1.15*10^(-11)*T^(3)

printf(" The expression for log(K) as a function of T is given by\n");
printf(" log(K) = 1.5103 - 10862.92/T - 0.0166*log(T) + 1.84*10^(-4)*T - 7.35*10^(-8)*T^(2) + 1.15*10^(-11)*T^(3)\n\n\n\n")

T = [500,1000,1500,2000,2500];
K = zeros(5);

printf(" T (K)  \t\t\t  K  \n\n");

for i=1:5;
    K(i) = exp(1.5103-10862.92/T(i) - 0.0166*log(T(i)) + 1.84*10^(-4)*T(i) - 7.35*10^(-8)*T(i)^(2) + 1.15*10^(-11)*T(i)^(3));
    
   printf(" %f  \t\t  %e  \n\n",T(i),K(i));
end

printf("\n\n");

// It can be seen that for endothermic reactions equilibrium constant increases with temperature.
printf(" It can be seen that for endothermic reactions equilibrium constant increases with temperature\n");


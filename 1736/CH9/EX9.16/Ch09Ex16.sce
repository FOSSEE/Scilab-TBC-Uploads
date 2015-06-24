// Scilab code Ex9.16 Page:314 (2006)
clc; clear;
T_c = 16.5;    // Transition temperature of a superconductor, K
Lambda = [0.7 0.8 0.9 1.0];    // Electron-phonon coupling constants at different Tc values 
Theta_D = 503;    // Debye temperature, kelvin
mu_prime = 0.13;    // Reduced mass of a superconductor, amu
Tc = zeros(4);
printf("\n_____________________");
printf("\nLambda          Tc");
printf("\n_____________________");
for i = 1:1:4
   Tc(i) = Theta_D/1.45*exp(-1.04*(1+Lambda(i))/(Lambda(i)-mu_prime*(1+0.62*Lambda(i)))); 
   if abs(Tc(i) - 16.5) < 1.0 then
       best_Lvalue = Lambda(i);
   end
   printf("\n%3.1f       %8.1f K", Lambda(i), Tc(i));
end
printf("\n_____________________");

printf("\nThe best electron-phonon coupling constant should be slightly above %3.1f ", best_Lvalue);

// Result 
// _____________________
// Lambda          Tc
// _____________________
// 0.7           11.1 K
// 0.8           15.8 K
// 0.9           20.4 K
// 1.0           24.9 K
// _____________________
// The best electron-phonon coupling constant should be slightly above 0.8  

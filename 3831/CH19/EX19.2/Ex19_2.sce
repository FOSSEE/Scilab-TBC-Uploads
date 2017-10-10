// Example 19_2
clc;funcprot(0);
// Given data
T=100.0;// °C

// Solution
// (a)
alpha_fecu=-(-13.4+(0.028*T)+(0.00039*T^2))*10^-6;// V/K
// (b)
pi_fecu=(T+273.16)*alpha_fecu;// V
printf('\n(a)The relative Seebeck coefficient,alpha_fecu=%1.2e V/K \n(b)The relative Peltier coefficient,pi_fecu=%1.2e V',alpha_fecu,pi_fecu);

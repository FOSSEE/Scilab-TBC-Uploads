// Scilab code Ex7.6: Pg 244 (2005)
clc; clear;
Z_T = 88;     // Atomic number of daughter nucleus
E_T = 4.05e+06;     // Energy of ejected alphas, eV
R = 9.00e-15;      // Nuclear radius, m
r_o = 7.25e-15;     // Bohr radius, m
E_o = 0.0993e+06;     // Energy analogous to the Rydberg in Atomic Physics 
T_T = exp(-4*%pi*Z_T*sqrt(E_o/E_T) + 8*sqrt((Z_T*R)/r_o));    // Transmission factor in case of Thorium
f = 1e+21;    // Frequency of collisions, Hz
lamda_T = f*T_T;    // Decay rate in case of Thorium, s^(-1)
t_T = 0.693/lamda_T;     // Half-life time of Thorium, s
Z_P = 82;    // Atomic number of daughter nucleus
E_P = 8.95e+06;     // Energy of ejected alphas, eV
R = 9.00e-15;     // Nuclear radius, m
r_o = 7.25e-15;     // Bohr radius, m
E_o = 0.0993e+06;      // Energy unit, eV
T_P = exp(-4*%pi*Z_P*sqrt(E_o/E_P) + 8*sqrt((Z_P*R)/r_o));    // Transmission factor in case of Polonium
f = 1e+21;    // Frequency of collisions, Hz
lamda_P = f*T_P;      // Decay rate in case of Thorium, s^(-1)
t_P = 0.693/lamda_P;    // Half-life time of Polonium, s

printf("\nHalf-life time of Thorium = %3.1e s = %3.1e yrs", t_T, t_T/(365*24*60*60));
printf("\nHalf-life time of Polonium = %3.1e s", t_P);

// Result
// Half-life time of Thorium = 5.3e+17 s = 1.7e+10 yrs
// Half-life time of Polonium = 8.4e-10 s 

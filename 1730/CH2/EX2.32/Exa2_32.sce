//Exa2.32
clc;
clear;
close;
//given data
T_lower=10;// in degree C
T_upper=150;// in degree C

// Thermo-electric power for iron at any temperature T degree C w.r.t. lead is given by (17.34-0.0487 T)*10^-6 and that for copper by (1.36-.0095 T)*10^-6

// Thermo-electric power, P=dE/dT
// or dE=P*dT
// Thermo-emf for copper between temperature 10 degree C and 150 degree C,
E_c= integrate('(1.36-0.0095*T)*10^-6','T',T_lower,T_upper);

// Thermo-emf for iron between temperature 10 degree C and 150 degree C,
E_i= integrate('(17.34-0.0487*T)*10^-6','T',T_lower,T_upper);

// Thermo-emp for copper-iron thermo-couple
E=E_i-E_c;

disp("Thermo-emf for iron between temperature 10 degree C and 150 degree C is : "+string(E*10^6)+" micro V");


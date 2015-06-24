
// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat transfer, Seventh Edition, Frank Kreith, Raj M Manglik and Mark S Bohn, Chapter 10, Example 7")
//Temperature of the brine spray used for internal refrigeration in degree celcius
T_inf=-11;
//Required thickness of ice layer in meters
epsilon= 0.0025;
//Water-liquid temperature in degree celcius
T1=4.4;
//Liquid-surface conductance in W/m^2 K
h_epsilon=57;
//Conductance between brine and ice(including metal wall) in W/m^2 K
h_not=570;
//Latent heat of fusion for ice in J/Kg
Lf=333700;
//Density for ice in Kg/m^3
rho=918;
//Thermal conductivity for ice in W/m K
k=2.32;
//Freezing point temperature in degree K
Tfr=0;
//Dimensionless R, T, epsilon and t are as follows
//R plus parameter 
R_plus= h_epsilon/h_not;
//T plus parameter
T_plus= (T1-Tfr)/(Tfr-T_inf);
//Epsilon plus parameter
Epsilon_plus= h_not*epsilon/k;
//t plus parameter
t_plus=(Epsilon_plus/(R_plus*T_plus))-((1/(R_plus*T_plus)^2)*log(1+(R_plus*T_plus*Epsilon_plus/(1+R_plus*T_plus))))

disp("Time taken for 0.25cm thick ice layer deposition in sec")
//time in seconds
t=t_plus*rho*Lf*k/((h_not)^2*(Tfr-T_inf))

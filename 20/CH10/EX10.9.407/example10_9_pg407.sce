// Example10_9_pg407.sce
// To find the field excitation required
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 407


clear; clc; close;

// Given data
va = 2500e+3; // Volt Ampere rating of machine, VA
vll = 6600; // Line to Line voltage in volts
N = 3000; // Number of turns
f = 50; // Frequency in Hz
slots = 60;
n = 4;
poles =2;
r = 0.073;
x = 0.87;
pf1 = 0.8;
pf2 = 1;
pf3 = 0;
phase = 3;

// Calculations 

// For 80% power factor

phi = acos(pf1);
V = vll / sqrt(3);
I = round(va / (phase*V)) ;
IR_a = I*r;
IX_a = I*x;
V_vec = V*(cos(phi) +%i*sin(phi));
E = V_vec + I*(r + %i*x);
E_mag = sqrt(real(E)^2 + imag(E)^2);
conductors = slots * n;
turns = conductors/2;
N_p = turns / (poles * phase);
q = slots / (poles * phase);
gama = 360 / slots;
gama = gama*%pi/2;
k_b1 = (sin(q*gama/2))/(q*sin(gama/2));
k_p1 = 1;
A = (2*sqrt(2)/%pi)*phase*k_b1*k_p1*N_p*I;
cos_alpha = (real(E)/E_mag);
sin_alpha = (imag(E)/E_mag);
alpha = acos(cos_alpha);
F_r_mag = 17500;
F_r = F_r_mag*(cos(alpha + %pi/2) + %i*sin(alpha + %pi/2));
F = F_r - A;
F_mag = sqrt(real(F)^2 + imag(F)^2);
disp('The open-circuit voltage corresponding to this excitation, determined from Fig. 10-12, is 4450 volts;');
oc_volt = 4450;
regulation80 = ((oc_volt - V)/V)*100;
printf("\n\nThe regulation for 80%% power factor is %0.1f %% ", regulation80);

// For power factor 1.0

phi = acos(pf2);
V_vec = V*(cos(phi) +%i*sin(phi));
E = V_vec + I*(r + %i*x);
E_mag = sqrt(real(E)^2 + imag(E)^2);
cos_alpha = (real(E)/E_mag);
sin_alpha = (imag(E)/E_mag);
alpha = acos(cos_alpha);
F_r_mag = 16500;
F_r = F_r_mag*(cos(alpha + %pi/2) + %i*sin(alpha + %pi/2));
F = F_r - A;
F_mag = sqrt(real(F)^2 + imag(F)^2);
disp('The open-circuit voltage corresponding to this excitation, determined from Fig. 10-12, is 4150 volts;');
oc_volt = 4150;
regulation100 = ((oc_volt - V)/V)*100;
printf("\n\nThe regulation for 100%% power factor is %0.1f %% ", regulation100);

// For power factor 0

phi = acos(pf3);
E = V + I*(x);
F_r_mag = 18000;
F_r = F_r_mag + 11300;
printf("\nThe value F_R corresponding to Fig 10-12 is %d Volts\n", F_r);
disp('The open-circuit voltage corresponding to this excitation, determined from Fig. 10-12, is 4500 volts;');
oc_volt = 4500;
regulation0 = ((oc_volt - V)/V)*100;
printf("\nThe regulation for 0%% power factor is %0.1f %% \n", regulation0);

// Result
//  The open-circuit voltage corresponding to this excitation, determined from Fig. 10-12, is 4450 volts;       
//
// The regulation for 80% power factor is 16.8 %  
// The open-circuit voltage corresponding to this excitation, determined from Fig. 10-12, is 4150 volts;
//
// The regulation for 100% power factor is 8.9 % 
// The value F_R corresponding to Fig 10-12 is 29300 Volts
//  
// The open-circuit voltage corresponding to this excitation, determined from Fig. 10-12, is 4500 volts;
//
// The regulation for 0% power factor is 18.1 % 

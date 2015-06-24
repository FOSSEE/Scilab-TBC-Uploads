//Exa3.27
clc;
clear;
close;
// given data
N_D=10^21;// in m^-3
N_A=10^22;// in m^-3
D_e=3.4*10^-3;// in m^2/s
D_h=1.2*10^-3;// in m^2/s
L_e=7.1*10^-4;// in m
L_h=3.5*10^-4;// in m
n_i=1.602*10^16;// in /m^3
e=1.6*10^-19;// in C (electron charge)
// Formula  I_0=a*e*[D_h/(L_h*N_D) + D_e/(L_e*N_A)]*n_i^2
//and
// Reverse saturation current density = I_0/a = [D_h/(L_h*N_D) + D_e/(L_e*N_A)]*e*n_i^2 , So
CurrentDensity= [D_h/(L_h*N_D) + D_e/(L_e*N_A)]*e*n_i^2;// in A
CurrentDensity=CurrentDensity*10^6;// in micro A
disp("Reverse saturation current density is : "+string(CurrentDensity)+"  micro amp");

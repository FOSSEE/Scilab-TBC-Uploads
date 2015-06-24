clc();
clear;
// To calculate the polarizability and relative permittivity of He
R=0.55;    //radius of He atom in angstrom
R=R*10^-10;    //radius of He atom in m
epsilon_0=8.84*10^-12;    //f/m
N=2.7*10^25;
alpha_e=4*%pi*epsilon_0*R^3;
epsilon_r=(N*alpha_e/epsilon_0)+1;
printf("polarizability in farad m^2 is");
disp(alpha_e);
printf("relative permitivity is");
disp(epsilon_r);

// Example 18_2
clc;funcprot(0);
// Given data
T=273;// K
p=0.113;// MPa
M=20.183;// kg/kg mole
N_o=6.022*10^26;// molecules/kgmole
k=1.380*10^-23;// J/(molecules.K)


// Calculation
m=M/N_o;// kg/molecule
V_rms=((3*k*T)/m)^(1/2);// m/s
r=1.3*10^-10;// The radius of the neon molecule in m
sigma=4*%pi*r^2;// The collision cross-section in m^2
NbyV=(p*10^6)/(k*T);// molecules/m^3
F=sigma*V_rms*NbyV*(8/(3*%pi))^(1/2);// The collision frequency in collisions/s
lambda=1/(NbyV*sigma);// The molecular mean free path in m
printf("\nThe collision frequency,F=%1.2e collisions/s \nThe molecular mean free path,lambda=%1.2e m",F,lambda);

//Exa3.4
clc;
clear;
close;
// given data
SiliconAtom=5*10^22;// unit less (Number of silicon atom)
DonorImpurity=1/10^6;
n_i=1.45*10^10;// in cm^-3
e=1.602*10^-19;// in C
miu_e=1300;// taking miu_e for Si as 1300 cm^2/V-s
// (i) Donor atom concentraion
// Formula N_D= Number of silicon atoms/cm^3 * donor impurity
N_D=SiliconAtom*DonorImpurity;
disp("(i) Donor atom concentration is : "+string(N_D)+" per cm^3");

// (ii) Mobile electron concentration
n=N_D; // (approx.)
disp("(ii) Mobile electron concentration is : "+string(n)+" per cm^3");

// (iii) Hole concentration
p=n_i^2/N_D;
disp("(iii) Hole concentration is : "+string(p)+" /cm^3");

//(iv) conductivity of doped silicon sample
sigma=n*e*miu_e;
disp("(iv) conductivity of doped silicon sample is : "+string(sigma)+" S/cm");

rho=1/sigma;
//(v) resistance of given semiconductor
l=0.5;// in cm
a=(50*10^-4)^2
R=rho*l/a;
disp("Resistance of give semiconductor is : "+string(R)+" ohm");


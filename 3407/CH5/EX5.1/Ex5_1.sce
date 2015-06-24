clear;
clc;
funcprot(0);

//given data
T01 = 293;//in K
pi = 5;//pressure ratio
R = 0.5;//stage reaction
Um = 275;//in m/s
phi = 0.5;//flow coefficient
psi = 0.3;//stage loading factor
eff_stage = 0.888;//stage efficiency
Cp = 1005;//J/(kgC)
gamma = 1.4;

//Calculations
beta1 = (180/%pi)*atan((R + 0.5*psi)/phi);
beta2 = (180/%pi)*atan((R - 0.5*psi)/phi);
alpha2 = beta1;
alpha1 = beta2;
delT0 = psi*(Um^2)/Cp;
N = (T01/delT0)*((pi^((gamma-1)/(eff_stage*gamma))) - 1);
N = ceil(N);
eff_ov = ((pi^((gamma-1)/gamma)) - 1)/((pi^((gamma-1)/(eff_stage*gamma))) - 1);
printf('The flow angles are: beta1 = alpha2 = %.2f deg and beta2 = alpha1 = %d deg.',beta1,ceil(beta2));
printf('\n The number of stages required = %d',N);
printf('\n The overall efficiency = %.1f percentage',eff_ov*100);

//there is a small error in the answer given in textbook

// Example 10.3
clear;
clc;

// Given data
E = 2;                                          // Energy of gamma rays in MeV
X_dot = 2.5;                                    // Exposure rate in mR/hour
phi0 = 10^9;                                    // Intensity of gamma rays in gamma-rays/cm^2-sec from isotropic point source
// Using the data from Table II.5 for 1 MeV 
mua_rho_air = 0.0238;                           // The ratio of total attenuation coefficient to density of air in cm^2/g
phi_b = X_dot/(0.0659*E*mua_rho_air);          // Buildup flux in gamma-rays/cm^2-sec

// From standard data tables for concrete
rho = 2.35;                                     // Density of concrete in g/cm^3
// Using the data from Table 10.3 for concrete at 2 MeV
A1 = 18.089;
A2 = 1-A1;
alpha1 = -0.0425;
alpha2 = 0.00849;
// Using Eq 10.26
printf(" \n The equation to calculate thickness is \n %.2E = (%E/2) *(%4.3f*E1(%4.3f*mu*a) %4.3f*E1(%4.3f*mu*a)) \n",phi_b,phi0,A1,(1+alpha1),A2,(1+alpha2));
// Using the data from Table II.4 for E = 1 MeV for concrete
mu_rho = 0.0445;                              // The ratio of total attenuation coefficient to density in cm^2/g
mu = mu_rho*rho;
// On solving the right hand side of equation
// RHS = 1.13*10^7*(E1(0.9575*mu*a)-0.94*E1(1.00849*mu*a))
// Let mu*a = x
x = 1:20
for i = 1:20
    RHS(i) = 1.13*10^7*(exp(-0.9575*x(i))*((1/(0.9575*x(i))+(1/(0.9575*x(i))^3))) - exp(-1.00849*x(i))*((1/(1.00849*x(i))+(1/(1.00849*x(i))^3))));
end
plot2d("nl",x(:),RHS(:));
xlabel("mu*a");
ylabel("RHS");
title("Semilog plot of RHS vs mu*a")
// From the graph
mua = 13.6;                                   // This is the value when RHS = 1
// Calculation
a = mua/mu;
// Result
printf("\n The concrete thickness = %d cm \n",a);
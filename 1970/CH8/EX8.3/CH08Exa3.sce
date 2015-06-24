// Scilab code Exa8.3 : : Page-349 (2011)
clc; clear;
b = 1.9e-15;        // Width of square well potential, metre
h_kt = 1.054571e-034;        // Reduced planck's constant, joule sec
c = 3e+08;                // Velocity of light, metre per sec
m_n = 1.67e-27;            // Mass of a nucleon , Kg
V_0 = 40*1.6e-13;            // Depth, metre
E_B = (V_0-(1/(m_n*c^2)*(%pi*h_kt*c/(2*b))^2))/1.6e-13;        // Binding energy, mega electron volts
alpha = sqrt(m_n*c^2*E_B*1.6e-13)/(h_kt*c);    // scattering co efficient, per metre
P = (1+1/(alpha*b))^-1;        // Probability
R_mean = sqrt (b^2/2*(1/3+4/%pi^2+2.5));    // Mean square radius, metre
printf("\nThe probability that the proton moves within the range of neutron = %4.2f \nThe mean square radius of the deuteron = %4.2e metre", P, R_mean);

// Result
// The probability that the proton moves within the range of neutron = 0.50 
// The mean square radius of the deuteron = 2.42e-015 metre 

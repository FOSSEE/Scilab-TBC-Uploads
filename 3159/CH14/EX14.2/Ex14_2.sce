// Calculate conductivity of copper at 300 K
clc
tau = 2e-14 // collision time of electron in s
e = 1.602e-19 // charge on electron
m_e = 9.1e-31 // mass of electron in kg

printf("\n Example 14.2")
n = 6.023e23*8960/0.06354

sigma= n*e^2*tau/m_e
printf("\n Conductivity of copper at 300 K is %.1e ohm^-1 m^-1 ",sigma)

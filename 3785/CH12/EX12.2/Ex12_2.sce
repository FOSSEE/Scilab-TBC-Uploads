// Example 12_2
clc;funcprot(0);
// Given data
T=20;// °C
SPL=20;// Sound Pressure level in dB
// From table 1.1,
rho_0=1.204;// kg/m^3
gamma=3.5/2.5;// Specific heat ratio

// Calculation
// (a) Inverting equation 12.18,
Pa=2*10^-5*(1*10^(20/10));// Pa
// (b) From equation 12.17,
a=(gamma*1.013*10^5*rho_0)^(1/2);// m/s
va=Pa/(rho_0*a);
//(c) From equation 12.17,
P_sw=(Pa)^2/(rho_0*a);
printf('\n(a)The pressure amplitude is %1.0e Pa \n(b)The velocity amplitude is %1.2e m/s \n   The power per unit area,P_sw=%1.2e W/m^2',Pa,va,P_sw);
// The answer provided in the book is wrong

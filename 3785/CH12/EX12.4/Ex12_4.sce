// Example 12_4
clc;funcprot(0);
// Given data
p_s=4*10^5;// Pressure in Pa
a_s=347.2;// Sound speed in m/s
A_c=1*10^-4;// The flow area in m^2
p_a=1*10^5;// The atmospheric pressure in Pa
r=1.4;// The specific heat ratio
V_c=0.5787;

// Calculation
rho_c=(r*p_s)/a_s;// kg/m^3
m_c=rho_c*V_c*A_c;// kg/s
V_c=a_s/(sqrt(1+(r-1)/2));// m/s
p_c=((2/(r+1))^(r/(r-1)))*p_s;// N
F=(m_c*V_c)+((p_c-p_a)*A_c);// N
printf('\nThe mass flow rate of air from the tank=%1.2e kg/s \nThe external force F required to restrain the tank from moving is %2.2f N',m_c,F);

// Scilab Code Ex4.6: Page-140 (2013)
clc; clear
c = 3.00e+008;    // Speed of light, m/s
r = 0.5e-010;    // Radius of the atom, m
e = 1.6e-019;    // Charge on an electron, C
m_e = 9.11e-031;    // Mass of the electron, kg
k = 9e+009;    // Coulomb constant, N-Sq.m/C^2
v = e*k^(1/2)/(m_e*r)^(1/2);    // Speed of the electron, m/s
if v < 0.01*c then
    printf("\nThe nonrelativistic treatment for calculating speed of the electron = %3.1e m/s is justified", v);
end

// Result
// The nonrelativistic treatment for calculating speed of the electron = 2.2e+006 m/s is justified 
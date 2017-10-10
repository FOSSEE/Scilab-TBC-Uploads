// Scilab code Exa1.4.5 : To calculate densities of O and Pb whose radii are given: Page 35 (2011)
m_O = 2.7e-026; // Mass of O nucleus, kg
r_O = 3e-015; // Radius of O nucleus, m
V_O = 4/3*(%pi*( r_O)^3); // Volume of O nucleus, metre cube
d_O = m_O/V_O; // Density of O nucleus, kg/metre cube
m_Pb = 3.4e-025; // Mass of Pb nucleus, kg
r_Pb = 7.0e-015; // Radius of Pb nucleus, m
V_Pb = 4/3*(%pi*(r_Pb)^3); // Volume of Pb nucleus, metre cube
d_Pb = m_Pb/V_Pb; //Density of Pb nucleus,kg/metre cube
printf("\nThe density of oxygen nucleus : %4.2e in kg/metre cube",d_O);
printf("\nThe density of Pb nucleus : %4.2e in kg/metre cube",d_Pb);

// Result
// The density of oxygen nucleus : 3.73e+018 in kg/metre cube
// The density of Pb nucleus : 2.37e+017 in kg/metre cube
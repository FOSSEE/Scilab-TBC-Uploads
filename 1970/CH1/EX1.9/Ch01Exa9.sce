// Scilab code Exa1.9 : : Page 54 (2011)
clc; clear;
e = 1.60218e-019;            // Charge of an electron,C
B = 0.65;                    // Magnetic field, tesla
d_S1_S2 = 27.94e-02;         // Distance between slit S1 and S2, metre
R_1 = d_S1_S2/2;             // Radius of orbit of ions entering slit S2,metre
d_S4_S5 = 26.248e-02;        // Distance between slit S4 and S5, metre
R_2 =  d_S4_S5/2;            //Radius of orbit of ions leaving slit S4,metre
M = 106.9*1.66054e-027;            // Mass of an ion(Ag+)Kg, 
T_1 = B^2*e^2*R_1^2/(2*M*1.60218e-019);             // Kinetic energy of the ion entering slit S2,eV 
T_2 = B^2*e^2*R_2^2/(2*M*1.60218e-019);             // Kinetic energy of the ion leaving slit S4,eV 
printf("\nKinetic energy of the ion entering slit S2 : %d eV \nKinetic energy of the ion leaving slit S4 : %d eV ",T_1,T_2)

// Result
// Kinetic energy of the ion entering slit S2 : 3721 eV 
// Kinetic energy of the ion leaving slit S4 : 3284 eV  

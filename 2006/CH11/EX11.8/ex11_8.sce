clc;
p1=10; // Initial pressure in MPa
T1=263; // Initial temperature in Kelvin
p2=1.5; //  Final pressure in MPa
R_1=8.3143; // Universal gas constant  in kJ/kmol K
M=28; // Molecular mass
// The crictical properties for nitrogen gas 
Tc=126.2; // Temperature in kelvin
Pc=3.39; // Pressure in MPa
// Reduced properties are
Pr1=p1/Pc; Pr2=p2/Pc;
Tr1=T1/Tc;
// From the generalized chart for enthalpy departure at Pr1 & Tr1
h_11=8.7*Tc/M;
// The solution involves iteration procedure. Assume T2 and check if h2_h1=0
// First approximation T2=200 K
T2=200; // In K
Tr2=T2/Tc;
Cpr=1.046;
h_21=Cpr*(T2-T1);
// From the generalized chart for enthalpy departure at Pr1 & Tr1
h_22=1*Tc/M;
h2_h1=h_11-T2+T1-h_22;
// Second approximation 
T2=190; // In K
Tr2=T2/Tc;
Cpr=1.046;
h_21=Cpr*(T2-T1);
// From the generalized chart for enthalpy departure at Pr1 & Tr1
h_22=1.5*Tc/M;
h2_h1=h_11-T2+T1-h_22;
disp ("Here also h2-h1 != 0. Therefore the temperature is dropping.Thus Joule-Thomson coefficient is positive.There is cooling in this process");

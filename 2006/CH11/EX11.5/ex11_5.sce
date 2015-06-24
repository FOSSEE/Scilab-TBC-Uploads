clc;
p1=11; // Initial pressure in bar
T1=40; // Initial temperature in degree celcius
p2=60; //  Final pressure in bar
R_1=8.3143; // Universal gas constant  in kJ/kmol K
// The crictical properties for natural gas 
Tc=161; // Temperature in kelvin
Pc=46.4; // Pressure in bar
// Reduced properties are
Pr1=p1/Pc; Pr2=p2/Pc;
Tr1=(T1+273)/Tc;
// T2=T1, The ideal gas enthalpy h2*=h1*=h1
h21=-47.5; // From generalized enthalpy departure chart
M=16; // Molecular weight
Sp2_1=(R_1/M)*log (p2/p1)// for the difference in ideal gas entropies
Sp2_Sp_2=-0.1125; Sp_2_Sp_1=-2.1276; // Entropies in kJ/kg K
s2_s1=(Sp2_Sp_2)+(Sp_2_Sp_1);
q=(T1+273)*s2_s1; // Heat transfer
w=q-h21; // Work of compression
disp ("kJ/kg",w,"Work of compression = ","kJ/kg",q,"Heat transfer = ");

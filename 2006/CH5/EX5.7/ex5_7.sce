clc;
T1=300; // Temperature of air at state 1 in Kelvin
T2=500; // Temperature of air at state 2 in Kelvin
m_=28.966; // Molecular weight oh air in kg
Cpoav=1.017; // Average value of specific heat of air in kJ/kg K
// (a). change in enthalpy
h_=27.43*(T2-T1)+3.09*10^-3*(T2^2-T1^2)-0.2296*10^-6*(T2^3-T1^3); //change in enthalpy during process in kJ/kmol
h=h_/m_; // change in enthalpy during process in kJ/kg
disp ("kJ/kg",h,"(a).change in enthalpy during process = ");
// (b).change in enthalpy
h=Cpoav*(T2-T1); // change in enthalpy in kJ/kg
disp ("kJ/kg",h,"(b).change in enthalpy during process with average specfic heat = ");

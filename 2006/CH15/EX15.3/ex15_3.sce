clc;
T0=298; // Temperature of surroundings in kelvin
R_1=8.314; // Universal gas constant in kJ/kg mol K
T=2800; // Given Temperature in kelvin
// From table of properties of combustion
del_hfco2=-393509; // Enthalpy of heat 
del_hfco=-110525; // Enthalpy of heat 
del_H=del_hfco2-del_hfco; // Standard enthalpy of reaction
Ka=1.229D+45; // The equilibrium constant From the example 15.2
K1=log (Ka);
K=exp(-(del_H/R_1)*((1/T)-(1/T0))+K1);
disp (K,"K =");

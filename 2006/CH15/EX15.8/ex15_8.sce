clc;
T=3000; // Temperature of combustion in kelvin
p=1; // Pressure of combustion in atm
T0=298; // Temperature of surroundings in kelvin
R_1=8.314; // Universal gas constant in kJ/kg mol K
// Gibbs functions at 298K from Table 14.1
del_gNO=86550; // In kJ/kmol
del_gNO2=51310; // In kJ/kmol
// From table of properties of combustion
del_hfNO=90250; // Enthalpy of heat 
del_hfNO2=33180; // Enthalpy of heat 
K1=exp (-(del_hfNO/R_1)*((1/T)-(1/T0))-((del_gNO)/(R_1*T0)));
K2=exp (-(del_hfNO2/R_1)*((1/T)-(1/T0))-((del_gNO2)/(R_1*T0)));
// By solving equilibrium equations by iteration method
E1=0.228; E2=0.0007;
yNO=E1/4.76; // Mole fraction of NO in exhaust gas
yNO2=E2/4.76; // Mole fraction of NO2 in exhaust gas
disp ("%",yNO2*100,"Mole fraction of NO2 in exhaust gas = ","%",yNO*100,"Mole fraction of NO in exhaust gas = ","Percentage of NOx present in the exhaust gas ");

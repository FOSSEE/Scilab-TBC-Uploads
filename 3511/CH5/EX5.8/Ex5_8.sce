clc;
p=336.5; //specific power output of a turbine in kW/kg
T4=700; // Temperature at turbine outlet in kelvin
Cp=1; // Specific heat at constant pressure in kJ/kg K
Cv=0.717; // Specific heat at constant volume in kJ/kg K

r=Cp/Cv; // Specific heat ratio
T3=T4+(p/Cp); // Temperature at turbine inlet 
p3_p4=(T3/T4)^(r/(r-1)); // Pressure ratio across the turbine
disp (round(p3_p4),"Pressure ratio across the turbine = ");

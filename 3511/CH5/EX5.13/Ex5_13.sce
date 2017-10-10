clc;
T1=27+273; // Temperature at state 1 in kelvin
T3=827+273; // Temperature at state 3 in kelvin
Cp=1.005; // Specific heat at constant pressure in kJ/kg K
r=1.4; // Specific heat ratio

t=T3/T1; // Temperature ratio
Wmax=Cp*((T3*(1-1/sqrt(t)))-T1*(sqrt(t)-1)); // Maximum work
eff_wmax=(1-1/sqrt(t)); // Efficiency of brayton cycle
Tmax=T3; Tmin=T1;
eff_carnot=(Tmax-Tmin)/Tmax; // Carnot efficiency
disp ("kJ/kg of air",Wmax,"Maximum net work per kg of air = ");
disp ("%",eff_wmax*100,"Brayton cycle efficiency = ");
disp ("%",eff_carnot*100,"Carnot cycle efficiency = ");

clc;
p03=4.5; // Pressure at turbine inlet in bar
T03=800+273; // Temperature at turbine inlet in kelvin
p04=1.75; // Pressure at turbine outlet in bar
eff_T=0.75; //Turbine efficiency
p05=1.03; // Pressure at state 5 in bar
Cp=1.05; // Specific heat at constant pressure  in kJ/kg K
r=1.38; // Specific heat ratio 

T04=T03*(1-eff_T*(1-(1/(p03/p04)^((r-1)/r)))); // Temperature at state 4
cj=sqrt (2*Cp*10^3*T04*(1-(1/(p04/p05)^((r-1)/r)))); // Velocity leaving nozzle

disp ("K",T04,"(i).Temperature of the gas entering the jet (nozzle) = ");
disp ("m/s",cj,"(ii).Velocity of gas leaving the jet = ");

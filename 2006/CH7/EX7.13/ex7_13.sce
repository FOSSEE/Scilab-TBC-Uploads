clc;
m=18; // mass flow rate of air in kg/s
p1=3.6; // Pressure of fluid at inlet of turbine in MPa
T1=800; // Temperature of fluid at inlet of turbine in Kelvin
V1=100; // Velocity of fluid at inlet of turbine in m/s 
V2=150; // Velocity of fluid at outlet of turbine in m/s
W=3.6; // Power output of turbine in MW
p3=1.01; // pressure at diffuser outlet in bar
k=1.4; // Index of reversible adiabatic process
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
// (a)    Pressure at diffuser inlet
T2=((Cpo*T1)-((W*10^3)/m+(V2^2-V1^2)/2000))/Cpo; // Temperature at outlet of turbine
T3=(T2+273)+((V2^2)/(2*Cpo*10^3)); // Temperature of fluid at diffuser inlet
p2=p3*((T2+273)/T3)^(k/(k-1)); //pressure at diffuser inlet
disp ("bar",p2,"(a).pressure at diffuser inlet =");

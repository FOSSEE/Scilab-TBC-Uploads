clc;
p1=1; // Pressure of fluid at inlet in bar
T1=60; // Temperature of fluid at inlet in degree celcius
p2=2.8; // Pressure of fluid at outlet in bar
eff_d=0.80; // Diffuser efficiency
k=1.4; // Index of reversible adiabatic process
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
//   (a).Actual Diffuser
p2s=((p2-p1)/eff_d)+p1; // Isentropic pressure
T2=(T1+273)*(p2s/p1)^((k-1)/k); // Exit temperature
V1=sqrt (2000*Cpo*(T2-(T1+273))); // Initial Velocity
disp ("m/s",V1,"Initial Velocity =","K",T2,"Temperature of air leaving diffuser =","(a).Actual Diffuser");
//   (b).Reversible Adiabatic diffuser
T2s=(T1+273)*(p2/p1)^((k-1)/k); // Isentropic exit temperature
V1=sqrt (2000*Cpo*(T2s-(T1+273))); // Initial Velocity
disp ("m/s",V1,"Initial Velocity =","K",T2s,"Temperature of air leaving diffuser =","(b).Reversible Adiabatic diffuser");

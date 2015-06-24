clc;
p1=3; // Pressure of fluid at inlet in bar
T1=150; // Temperature of fluid at inlet in degree celcius
V1=90; // Velocity of fluid at inlet in m/s 
eff_nozzle=0.85; // Nozzle efficiency
k=1.4; // Index of reversible adiabatic process
p2=1/3*p1;
//   (a).Steam
// Following are taken from steam table
h1=2761; // specific enthalpy in kJ/kg 
s1=7.0778;// specific entropy in kJ/kg K
s2s=s1; // Isentropic process
sf2s=1.3026; sfg2s=6.0568;// specific entropy in kJ/kg K
hf2=417.46; hfg2=2258; // specific enthalpy in kJ/kg 
x2s=(s2s-sf2s)/sfg2s; // Quality of steam
h2s=hf2+x2s*hfg2;
V2s=sqrt (2000*(h1-h2s)+V1^2); // Isentropic Velocity 
V2=sqrt (eff_nozzle) *V2s; // Actual nozzle exit velocity
disp ("m/s   (round off error)",V2," Actual nozzle exit velocity = ","(a).Steam");
//   (b).Air
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
T2s=(T1+273)*(p2/p1)^((k-1)/k); // Isentropic temperature
V2s=sqrt ((2000*Cpo*((T1+273)-T2s))+V1^2); // Isentropic Velocity and (answer mentioned in the textbook is wrong)
V2=sqrt (eff_nozzle) *V2s; // Actual nozzle exit velocity
disp ("m/s   (answer mentioned in the textbook is wrong)",V2," Actual nozzle exit velocity = ","(b).Air");

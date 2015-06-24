clc;
T3=450; // temperature of steam at state 3 in degree celcius
p3=10; // Boiler pressure in MPa 
p6=5; // Condenser pressure in kPa
// From steam tables at state 1
hf=137.82; hfg=2423.7; // specific enthalpy in kJ/kg 
sf=0.4764; sfg=7.9187; // specific entropy in kJ/kg K
h1=137.82; // specific enthalpy at state 1 in kJ/kg 
s1=0.4764; // specific entropy at state in kJ/kgK
v1=0.001005; // specific volume in m^3/kg
wp=abs (v1*(p3*10^3-p6)); // Pump work (absolute value)
h2=h1+wp; // specific enthalpy at state 2
//   (a).Rankine cycle with superheat
// From steam tables at state 3
h3=3240.9;// specific enthalpy in kJ/kg
s3=6.419; // specific entropy in kJ/kg K
// State 4_1
x4_1=(s3-sf)/sfg; // Quality of steam at state 4_1
h4_1=hf+x4_1*hfg; // specific enthalpy at state 4_1
wT=h3-h4_1; // Turbine work
wnet=wT-wp; // Net work output
qH=h3-h2; // Heat added
eff_th=wnet/qH; // Thermal efficiency
SSC=3600/wnet; // specific steam consumption
disp ("kg/kWh",SSC,"specific steam consumption =","%",eff_th*100,"Thermal efficiency =",x4_1,"Quality of steam at exhaust = ","(a).Rankine cycle with superheat");
//   (b).Reheat cycle
s4=s3; // isentropic expansion
x4=0.975; // Quality of steam at state 4
// from steam table intermediate pressure is selected for s4 & x4 by interpolation and assumed by round value
p4=1.2; // Intermediate pressure in MPa
// From steam tables at state 4
hf4=798.6; hfg4=1986.2; // specific enthalpy in kJ/kg 
h4=hf4+x4*hfg4; // specific enthalpy in kJ/kg 
// From steam tables at state 5
h5=3368.5;// specific enthalpy in kJ/kg
s5=7.5266; // specific entropy in kJ/kg K
x6=(s5-sf)/sfg; // Quality of steam at state 6
h6=hf+x6*hfg; // specific enthalpy in kJ/kg 
wT=(h3-h4)+(h5-h6); // Turbine work
wnet=wT-wp; // Net work output
qH=(h3-h2)+(h5-h4); // Heat added
eff_th=wnet/qH; // Thermal efficiency
SSC=3600/wnet; // specific steam consumption
disp ("kg/kWh",SSC,"specific steam consumption =","%",eff_th*100,"Thermal efficiency =",x6,"Quality of steam at exhaust = ","(b).Reheat cycle");

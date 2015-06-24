clc;
T5=311.06; // temperature of steam at state 5  in degree celcius
p5=10; // Boiler pressure in MPa
p4=p5;
T7=32.88; // temperature of steam at state 7  in degree celcius 
p7=5; // Condenser pressure in kPa
p1=p7;
// From steam tables at p7
h1=137.82; // specific enthalpy at state 1 in kJ/kg 
s1=0.4764; // specific entropy at state 1 in kJ/kgK
v1=0.001005; // specific volume in m^3/kg
wp=abs (v1*(p5*10^3-p7)); // Pump work (absolute value)
h2=h1+wp; // specific enthalpy at state 2
T6=(T5+T7)/2; // Temperature of bleed system
h5=2724.7; // specific enthalpy at state 5 in kJ/kg 
s5=5.6141; // specific entropy at state 5 in kJ/kgK
// From steam tables at state 6
p6=791.5; // bleed steam pressure in kPa
p2=p6; p3=p6;
vf6=0.00114; // specific volume in m^3/kg
v3=vf6;
hf6=719.21; hfg6=2049.5; // specific enthalpy in kJ/kg 
sf6=2.0419; sfg6=4.6244; // specific entropy in kJ/kg K
x6=(s5-sf6)/sfg6; // quality of steam at state 6
h6=hf6+x6*hfg6; // specific enthalpy at state 6
h3=hf6; // specific enthalpy at state 3
m1=(h3-h2)/(h6-h2); // Fraction of bleed steam
wLP=abs (v1*(p2-p1)); // LP work
wHP=abs (v3*(p4*10^3-p3)); // HP work
wp=(1-m1)*wLP+wHP; // Total pump work
h2=h1+wp; h4=h3+wp; // Specific Enthalpies of water
// From steam tables at pc
hf7=137.82; hfg7=2423.7; // specific enthalpy in kJ/kg 
sf7=0.4764; sfg7=7.9187; // specific entropy in kJ/kg K
x7=(s5-sf7)/sfg7; // quality of steam at state 7
h7=hf7+x7*hfg7; // specific enthalpy at state 4
wT=(h5-h6)+(1-m1)*(h6-h7); // Turbine work
wnet=wT-wp; // Net work output
qH=h5-h4; // Heat added
eff_th=wnet/qH; // Thermal efficiency
SSC=3600/wnet; // specific steam consumption
disp ("kg/kWh",SSC,"specific steam consumption =","%",eff_th*100,"Thermal efficiency =");

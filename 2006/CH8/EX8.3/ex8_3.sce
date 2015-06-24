clc;
TH=311.06; // Source temperature in degree celcius
p2=10; // Boiler pressure in MPa
TL=32.88; // Sink temperature in degree celcius 
p1=5; // Condenser pressure in kPa
// (a).Actual carnot cycle
eff_Tur=0.8; // Efficiency of turbine
eff_com=0.6; // Efficiency of compressure
// From steam tables at p2
h3=2724.7; // specific enthalpy in kJ/kg 
s3=5.6141; // specific entropy in kJ/kg K
s2=3.3596; // specific entropy in kJ/kg K
h2=1407.56; // specific enthalpy in kJ/kg 
// From steam tables at p1
hf=137.82; hfg=2423.7; // specific enthalpy in kJ/kg 
sf=0.4764; sfg=7.9187; // specific entropy in kJ/kg K
x1=(s2-sf)/sfg; // quality of steam at state 1
x4=(s3-sf)/sfg; // quality of steam at state 4
h1=hf+x1*hfg; // specific enthalpy at state 1
h4=hf+x4*hfg; // specific enthalpy at state 4
wTs=h3-h4; // Turbine work
wT=eff_Tur*wTs; // Actual turbine work
wCs=h2-h1; // Compressor work
wC=wCs/eff_com; // Actual compressor work
wnet=wT-wC; // Net work output
h2a=h1+wC; // specific enthalpy
qH=h3-h2a; // Heat added
rw=wnet/wT; // Ratio of net work to trbine work
eff_th=wnet/qH; // Thermal efficiency
SSC=3600/wnet; // specific steam consumption
disp ("kg/kWh",SSC,"specific steam consumption =","%",eff_th*100,"Thermal efficiency =",rw,"Ratio of net work to trbine work =","(a).Actual carnot cycle");
//   (b).Actual Rankine cycle
eff_Tur=0.8; // Efficiency of turbine
eff_pump=0.9; // Efficiency of Pump
// From steam tables at p1
h1=137.82; // specific enthalpy at state 1 in kJ/kg 
s1=0.4764; // specific entropy at state in kJ/kgK
v1=0.001005; // specific volume in m^3/kg
wps=abs (v1*(p2*10^3-p1)); // Pump work (absolute value)
wp=wps/eff_pump; // Actual pmp work
h2a=h1+wp; // // specific enthalpy at state 2
wnet=wT-wp; // Net work output
qH=h3-h2a; // Heat added
rw=wnet/wT; // Ratio of net work to trbine work
eff_th=wnet/qH; // Thermal efficiency
SSC=3600/wnet; // specific steam consumption
disp ("kg/kWh",SSC,"specific steam consumption =","%",eff_th*100,"Thermal efficiency =",rw,"Ratio of net work to trbine work =","(b).Actual Rankine cycle");

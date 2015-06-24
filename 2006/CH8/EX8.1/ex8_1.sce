clc;
TH=311.06; // Source temperature in degree celcius
pb=10; // Boiler pressure in MPa
TL=32.88; // Sink temperature in degree celcius 
pc=5; // Condenser pressure in kPa
// From steam tables at pb
h2=1407.56; // specific enthalpy in kJ/kg 
h3=2724.7; // specific enthalpy in kJ/kg 
s2=3.3596; // specific entropy in kJ/kg K
s3=5.6141; // specific entropy in kJ/kg K
// From steam tables at pc
hf=137.82; hfg=2423.7; // specific enthalpy in kJ/kg 
sf=0.4764; sfg=7.9187; // specific entropy in kJ/kg K
x1=(s2-sf)/sfg; // quality of steam at state 1
x4=(s3-sf)/sfg; // quality of steam at state 4
h1=hf+x1*hfg; // specific enthalpy at state 1
h4=hf+x4*hfg; // specific enthalpy at state 4
wT=h3-h4; // Turbine work
wC=h2-h1; // Compressor work
wnet=wT-wC; // Net work output
qH=h3-h2; // Heat added
rw=wnet/wT; // Ratio of net work to trbine work
eff_th=wnet/qH; // Thermal efficiency
SSC=3600/wnet; // specific steam consumption
disp ("kg/kWh",SSC,"specific steam consumption =","%",eff_th*100,"Thermal efficiency =",rw,"Ratio of net work to trbine work =");

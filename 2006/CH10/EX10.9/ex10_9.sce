clc;
TH=600; // Temperature of heat sorce in degree celcius
T3=311.06; // Boiler temperature in degree celcius
p3=10; // Boiler pressure in MPa
T4=32.88; // Condensor temperature in degree celcius
p4=5; // Condensor pressure in kPa
T0=288;// Temperature of surroundings in kelvin
// From steam table and refer figure 10.10 for states
h1=137.82; h2=147.82; h3=2724.7; hf4=197.82; hfg4=2423.7; h4=1913.6; // specific enthalpy in kJ/kg 
s1=0.4764; s2=s1; s3=5.6141; s4=s3;  sf4=0.4764; sfg4=7.9187; s4=6.2782; // specific entropy in kJ/kg K
wT=h3-h4; // Turbine work
wp=h2-h1; // Pump work
wnet=wT-wp; // Net work
qH=h3-h2; // Heat supplied in boiler
qL=h4-h1; // Heat rejected in condensor
Wrev_Wpump=T0*(s2-s1); 
Wrev_Wboiler=T0*(s3-s2)-T0*qH/(TH+273);
Wrev_Wturbine=T0*(s4-s3);
Wrev_Wcondenser=T0*(s1-s4)+qL;
Wrev_Wcycle=Wrev_Wpump+Wrev_Wboiler+Wrev_Wturbine+Wrev_Wcondenser; 
disp ("kJ/kg",Wrev_Wcycle,"The lost (Wrev-W)for the overall cycle = ","kJ/kg",Wrev_Wcondenser,"The lost (Wrev-W)for the condensor = ","kJ/kg",Wrev_Wturbine,"The lost (Wrev-W)for the Turbine = ","kJ/kg",Wrev_Wboiler,"The lost (Wrev-W)for the Boiler = ","kJ/kg",Wrev_Wpump,"The lost (Wrev-W)for the Pump = ");

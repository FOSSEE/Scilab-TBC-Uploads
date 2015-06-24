clc;
m=5; // Mass of water in a tank in kg
T1=30; // Temperature of water at initial state (1) in degree celcius
T2=95; // Temperature of water at final state (2) in degree celcius
Qout=70; // Heat transfer from the water tank to the surrounding air in kJ
W=75; //Electric energy input to a stirrer inside water in kJ
mf=32.3; // Mass of fel in bomb in grams
u1=125.78; // Internal energy of water from steam table (uf at T1) in kJ/kg
u2=397.88; // Internal energy of water from steam table (uf at T2) in kJ/kg
Qf=m*(u2-u1)-W+Qout; // From First law of thermodynamics
qf=Qf/(mf*10^-3); // Heat consumption per unit mass of fuel 
disp ("kJ/kg",qf,"Heat consumption per unit mass of fuel =");

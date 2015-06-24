clc;
m=1; // Massflow rate of the steam in kg/s
p1=3.5; // Pressure at inlet in MPa
T1=400; // Temperature at inlet in degree celcius
V1=250; // Velocity of stesm at inlet in m/s
p2=50; // Pressure at outlet in kPa
T2=100; // Temperature at outlet in degree celcius
V2=30; // Velocity of stesm at outlet in m/s
// For actual expansion in the turbine
h1=3222.3; h2=2682.5; // specific enthalpy in kJ/kg at inlet and exit
wa=h1-h2+(V1^2-V2^2)/2000; // Work done
W=m*wa; // Power output
disp ("kW",W,"Power output of the turbine = (Error in textbook)");
// For reversible adiabatic expansion
// Following are the values taken from steam table 
s1=6.8405; // specific entropy in kJ/kg K
s2s=s1; // Isentropic expansion
sf2=1.091; sfg2=6.5029; // specific entropy in kJ/kg K
hf2=340.49; hfg2=2305.4; // specific enthalpy in kJ/kg
x2s=(s1-sf2)/sfg2; // Quality of steam at state 2
h2s=hf2+x2s*hfg2; // specific enthalpy in kJ/kg
ws=h1-h2s+(V1^2-V2^2)/2000; // Isentropic Work done
eff_isen=wa/ws; // Isentropic efficiency of the turbine
disp("%",eff_isen*100,"Isentropic efficiency of the turbine = (Error in textbook)")

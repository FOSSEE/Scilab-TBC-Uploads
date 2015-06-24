clc;
p1=12.5; // Pressure of steam at inlet in MPa
T1=500; // Temperature of steam at inlet in degree celcius
V1=50; // Velocity of steam at inlet in m/s
p2=10; // Pressure of steam at outlet in kPa
V2=100; // Velocity of steam at outlet in m/s
// (a).Actual expansion
x2=0.85; // Quality of steam
// From steam table
h1=3341.8; hf2=191.83; hg2=2584.7;  // specific enthalpy in kJ/kg 
s1=6.4618; sf2=0.6493; sfg2=7.5009; // specific entropy in kJ/kg K
h2a=(1-x2)*hf2+x2*hg2; // specific enthalpy in kJ/kg 
wa=(h1-h2a)+((V1^2-V2^2)/2000); // Actual work output
disp ("kJ",wa,"(a).Actual work output of turbine = ");
// (b).Reversible adiabatic expansion
x2s=(s1-sf2)/sfg2; // Quality of steam after reversible adiabatic expansion
h2s=(1-x2s)*hf2+x2s*hg2; // specific enthalpy in kJ/kg 
ws=(h1-h2s)+((V1^2-V2^2)/2000); // Reversible adiabatic work output
L=ws-wa; // Lost of work
disp ("kJ/kg",L,"Lost of work due to irreversibity of expansion process =","kJ/kg",ws,"Reversible adiabatic work output = ","(b).Reversible adiabatic expansion");
// (c).Entropy Generation
s2a=sf2+x2*sfg2; // actual specific entropy in kJ/kg K
Sgen=s2a-s1; // Entropy generation
disp ("kJ/kg K",Sgen,"(c).Entropy Generation =");

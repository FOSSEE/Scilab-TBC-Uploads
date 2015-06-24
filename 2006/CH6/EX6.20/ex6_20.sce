clc;
p1=0.1; // pressure at state 1 in MPa
p2=6; // Pressure at state 2 in MPa
// (a).Pump work for water
vf1=0.001043; // specific volume in m^3/kg
wp=-vf1*(p2-p1)*10^3; // Pump work for water
disp ("kJ",wp,"(a).Pump work for water =");
// (b).For steam
h1=2675.5;// specific enthalpy in kJ/kg 
s1=7.3595;// specific entropy in kJ/kg K
// From superheated steam table
t2=675; // Temperature at state 2 in degree celcius
h2=3835.3;// specific enthalpy in kJ/kg 
wc=-(h2-h1); // Compressor work for steam
disp ("kJ/kg",wc,"(b).Compressor work for steam =");

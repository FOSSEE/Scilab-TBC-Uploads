clc;
p1=6; // Initial pressure of steam in MPa
T1=500; // Initial temperature of steam in degree celcius
p2=10; // Final pressure of steam in bar
// From steam tables
s1=6.8803; sf2=1.3026; sfg2=6.0568; // specific entropy in kJ/kg K
u1=3082.2; uf2=761.68; ufg2=1822; // specific internal energy in kJ/kg
v1=0.05665; vf2=0.001043; vg2=1.694; // specific volume in m^3/kg
x2=(v1-vf2)/(vg2-vf2);// Quality of steam
u2=uf2+x2*ufg2; // specific internal energy in kJ/kg 
s2=sf2+x2*sfg2; // specific entropy in kJ/kg K
s21=s2-s1; // Entropy change
q=u2-u1; // Heat transfer
disp ("kJ",q,"Heat transfer for the process =","kJ/kg",s21,"Entropy change of the process = ");

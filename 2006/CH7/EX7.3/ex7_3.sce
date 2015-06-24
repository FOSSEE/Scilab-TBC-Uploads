clc;
m=1.5; // Mass of the fluid in kg
p1=1; // Initial pressure of fluid in bar
T1=150; // Initial temperture of fluid in degree celcius
v2=0.3; // Final specific volume in m^3/kg
//   (a).Steam
// Following are the values taken from steam table 
u1=2582.8; // specific internal energy in kJ/kg
s1=7.6134; // specific entropy in kJ/kg K
vf2=0.001091; vfg2=0.3917; // specific volume of the steam in m^3/kg
sf2=1.8418; sfg2=4.9961; // specific entropy in kJ/kg K
uf2=631.7; ufg2=1927.8; // specific internal energy in kJ/kg
x2=(v2-vf2)/vfg2; // Quality of steam at state 2
s2=sf2+x2*sfg2; // specific entropy in kJ/kg K
u2=uf2+x2*ufg2; // specific internal energy in kJ/kg
S21=m*(s2-s1); // Change in entropy
U21=m*(u2-u1); // Change in internal energy
Q=(T1+273)*(S21); // Heat transferred
W=Q-U21; // Work done
disp ("kJ",Q,"Heat transferred = ","kJ",W,"Work done = ","kJ/K",S21,"Change in entropy = ","kJ",U21,"Change in internal energy = ","(a).Steam");
//   (b).Air
R=0.287; // characteristic gas constant of air in kJ/kg K
v1=(R*(T1+273))/(p1*10^2); // initial specific volume
S21=m*R*log (v2/v1); // Change in entropy
Q=(T1+273)*(S21); // Heat transferred
W=Q; // Work done
disp ("kJ",Q,"Heat transferred = ","kJ",W,"Work done = ","kJ/K",S21,"Change in entropy = ","kJ",U21,"Change in internal energy = ","(b).Air");

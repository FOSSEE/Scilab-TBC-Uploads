clc;
m=1.5; // Mass of the fluid in kg
p1=1.6; // Initial pressure of fluid in MPa
T1=250; // Initial temperture of fluid in degree celcius
p2=150; // Initial pressure of the fluid in kPa
n=1.25; // Index of polytropic process
//   (a).Steam
// Following are the values taken from steam table 
// state 1 is superheated
u1=2692.3; // specific internal energy in kJ/kg
s1=6.6732; // specific entropy in kJ/kg K
v1=0.14184; // specific volume of the steam in m^3/kg
v2=v1*(p1/(p2*10^-3))^(1/n); // specific volume of the steam at state 2
// State 2 is wet 
T2=111.37; // Final temperature of steam in degree celcius
vf2=0.0010531; vfg2=1.1582; // specific volume of the steam in m^3/kg
x2=(v2-vf2)/vfg2; // Quality of steam at state 2
sf2=1.4336; sfg2=5.7897; // specific entropy in kJ/kg K
uf2=466.94; ufg2=2052.7; // specific internal energy in kJ/kg
s2=sf2+x2*sfg2; // specific entropy in kJ/kg K
u2=uf2+x2*ufg2; // specific internal energy in kJ/kg
W=m*((p2*v2)-(p1*10^3*v1))/(1-n); // Work done
Q=m*(u2-u1)+W; // Heat ttransferred
S21=m*(s2-s1); // Change in entropy
disp ("kJ",Q,"Heat transferred = ","kJ",W,"Work done = ","kJ/K",S21,"Change in entropy = ","K",T2+273,"Final Temperature = ","(a).Steam");
//   (b).Air
R=0.287; // characteristic gas constant of air in kJ/kg K
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
T2=(T1+273)*((p2*10^-3)/p1)^((n-1)/n); // Final temperature of air
W=m*R*(T2-(T1+273))/(1-n); // Work done
Q=m*Cvo*(T2-(T1+273))+W; // Heat transferred
S21=m*(Cvo+R/(1-n))*log (T2/(T1+273)); // Change in entropy
disp ("kJ",Q,"Heat transferred = ","kJ",W,"Work done = ","kJ/K",S21,"Change in entropy = ","K",T2,"Final Temperature = ","(b).Air");

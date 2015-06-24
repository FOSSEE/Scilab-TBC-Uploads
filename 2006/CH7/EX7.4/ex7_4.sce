clc;
m=1.5; // Mass of the fluid in kg
p1=1.6; // Initial pressure of fluid in MPa
T1=250; // Initial temperture of fluid in degree celcius
p2=150; // Initial pressure of the fluid in kPa
//   (a).Steam
// Following are the values taken from steam table 
// state 1 is superheated
u1=2692.3; // specific internal energy in kJ/kg
s1=6.6732; // specific entropy in kJ/kg K
v1=0.14184; // specific volume of the steam in m^3/kg
// State 2 is wet (s1=s2<sg2)
T2=111.37; // Final temperature of steam in degree celcius
sf2=1.4336; sfg2=5.7897; // specific entropy in kJ/kg K
uf2=466.94; ufg2=2052.7; // specific internal energy in kJ/kg
x2=(s1-sf2)/sfg2; // Quality of steam at state 2
u2=uf2+x2*ufg2; // specific internal energy in kJ/kg
W=-m*(u2-u1);// Work done
disp ("kJ",W,"Work done = ","K",T2+273,"Final temperature of steam =","(a).Steam");
//   (b).Air
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
k=1.4; // index of reversible adiabatic process
T2=(T1+273)*((p2*10^-3)/p1)^((k-1)/k); // Final temperature of air
W=-m*Cvo*(T2-(T1+273)); // Work done
disp ("kJ",W,"Work done = ","K",T2,"Final temperature of  =","(b).Air");

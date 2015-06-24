clc;
p1=1; // Initial pressure of fluid in MPa
T1=250; // Initial temperture of fluid in degree celcius
V=0.28; // Volume of container in m^3
p2=0.35; // Initial pressure of the fluid in MPa
//   (a).Water
v1=0.2327; // specific volume of vapour from steam table at state 1 in m^3/kg
v2=v1; // constant volume process
vf2=0.001079; vfg2=0.5232; //  specific volume of vapour from steam table at state 2 in m^3/kg
m=V/v1; // mass of steam
x2=(v2-vf2)/vfg2; // quality of steam at state 2
t2=138.88; // Final temperature of fluid in degree celcius (saturation temperature at p2)
// following are the values taken from steam tables
u1=2709.9; // specific internal energy at state 1 in kJ/kg
s1=6.9247; // Specific entropy at state 1 in kJ/kg K
uf2=582.95; ug2=2548.9; // specific internal energy at state 2 in kJ/kg
sf2=1.7245; sg2=6.9405; // Specific entropy at state 2 in kJ/kg K
u2=(1-x2)*uf2+x2*ug2; // specific internal energy at state 2 
s2=(1-x2)*sf2+x2*sg2; // specific enropy  at state 2 
Q=m*(u2-u1); // Heat transferred
S21=m*(s2-s1); // Entropy change
disp ("kJ/kg K   (round off error)",S21,"Entropy change = ","kJ   (answer mentioned in the textbook is wrong)",Q,"Heat transferred = ',"oC",t2,"Final Temperature = ","(a).Water");
//   (b).Air
Cvo=0.7165; // Specific heat at constant volume in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
m=(p1*10^3*V)/(R*(T1+273)); // Mass of air
T2=(p2/p1)*(273+T1); // Final temperature of air
Q=m*Cvo*(T2-(T1+273)); // Heat transferred
S21=m*Cvo*log (T2/(273+T1)); // Change in entropy
disp ("kJ/kg K   (round off error)",S21,"Entropy change = ","kJ   (round off error)",Q,"Heat transferred = ',"K ",T2,"Final Temperature = ","(b).Air");

clc;
p1=1.0021; // Initial pressure of the fluid in MPa
T1=180; // Initial temperature of the fluid in degree celcius
m=0.5; // Mass of the fluid in kg
p2=p1; // Constant pressure process
//   (a).Steam
x1=0.8; // Quality of the steam at state 1
// Following are the values taken from steam table 
vf1=0.001127; vfg1=0.1929; // specific volume of the steam in m^3/kg
hf1=763.2; hfg1=2015; // specific enthalpy in kJ/kg 
sf1=2.1396; sfg1=4.4460; // specific entropy in kJ/kg K
v1=vf1+x1*vfg1; // specific volume in m^3/kg
h1=hf1+x1*hfg1; // specific enthalpy in kJ/kg 
s1=sf1+x1*sfg1; // specific entropy in kJ/kg K
v2=2*v1; // Final volume of the fluid
t2=410.5; // Final temperature of steam in degree celcius (from superheated steam table)
h2=3286.4; // specific enthalpy in kJ/kg 
s2=7.525; // specific entropy in kJ/kg K
S21=m*(s2-s1); // Change in entropy
W=m*p1*10^3*(v2-v1); // Work done
Q=m*(h2-h1); // Heat transferred
disp ("kJ",Q,"Heat transferred = ","kJ",W,"Work done = ","kJ/K",S21,"Change in entropy = ","K",t2+273,"Final Temperature = ","(a).Steam");
// (b).Air
Cpo=1.0035; // Specific heat at constant pressure in kJ/kg K
R=0.287; // characteristic gas constant of air in kJ/kg K
V1=m*R*(T1+273)/(p1*10^3); // Initil volume
V2=2*V1; // Final volume
T2=(T1+273)*V2/V1; // Final temperature
S21=m*Cpo*log (V2/V1); // Change in entropy
W=p1*10^3*(V2-V1); // Work done
Q=m*Cpo*(T2-(T1+273));// Heat transferred
disp ("kJ",Q,"Heat transferred = ","kJ",W,"Work done = ","kJ/K",S21,"Change in entropy = ","K",T2,"Final Temperature = ","(b).Air");

clc;
 // (a) Ammonia 26 oC and 0.074 m^3/kg
// From saturation table of ammonia at 26 oC
v=0.074; // specific volume of ammonia in m^3/kg
vf=0.001663; vg=0.1245; // specific volume  of ammonia in m^3/kg
x=(v-vf)/(vg-vf); // Quality of vapour  since v<vg
disp (x,"The Quality of ammonia = ","(a) Ammonia 26 oC and 0.074 m^3/kg");
// (b).Ammonia 550kPa and 0.31m^3/kg
// From saturation table of ammonia at 550 kPa
v=0.31; // specific volume of ammonia in m^3/kg
vg=0.23; // specific volume  of ammonia in m^3/kg
// v > vg . Since from superheated table by interpolation for 550kPa and v
T=82.1; // Temperature of ammonia in degree celcius
disp ("oC",T,"Temperature of ammonia = ","(b).Ammonia 550kPa and 0.31m^3/kg");
// (c).Freon 12, 0.35MPa and 0.036 m^3/kg
// From saturation table of Freon 12 at 0.35MPa
v=0.036; // specific volume of Freon 12 in m^3/kg
vf=0.000722; vg=0.049329; // specific volume  of Freon 12 in m^3/kg
x=(v-vf)/(vg-vf); // Quality of vapour since v<vg
disp (x,"The Quality of Freon 12  = ","(c).Freon 12, 0.35MPa and 0.036 m^3/kg");
// (d).Methane 0.5MPa and 1.0 m^3/kmol
v=1; // specific volume of Methane in m^3/kmol
// From table at 0.5 MPa molar values are
vf=0.04153; vg=2.007; // specific volume  of Methane in m^3/kmol
x=(v-vf)/(vg-vf); // Quality of vapour since v<vg
disp (x,"The Quality of Methane  = ","(d).Methane 0.5MPa and 1.0 m^3/kmol");

clear;
clc;

// Illustration 2.8
// Page: 120

printf('Illustration 2.8 -  Page: 120\n\n');

// solution
//*****Data*****//
//   a-liquid benzene     b-nitrogen
T = 300; // [K]
l = 3; // [length of vertical plate, m]
b = 1.5; // [width of vertical plate, m]
P = 101.3; // [kPa]
v = 5; // [velocity across the width of plate, m/s]
row_a = 0.88; // [gram/cubic cm]
//*****//

y_a1 = 0.139; // [mole fraction of benzene at inner edge]
y_a2 = 0; 

// The film conditions, and average properties, are identical to those in Example 2.7, only the geometry is different
// Therefore
M_avg = 31.4; // [kg/kmole]
row = 1.2; // [kg/cubic m]
u = 161*10^-7; // [kg/m.s]
D_ab = 0.0986; // [square cm/s]
Sc = 1.3; // [Schmidt Number]
Re = row*v*b/u; // [Renoylds Number]

if(Re>4000)
    printf('The flow across the plate is turbulent\n\n');
    else(Re<2000)
    printf('The flow across the plate is laminar\n\n');
    end
    
// Using equation 2.57
Sh_l = 0.036*Re^0.8*Sc^(1/3); 

// Nitrogen (component B) does not react with benzene (component A), neither dissolves in the liquid; therefore, NB = 0 and siA = 1. The F-form of the mass-transfer coefficient should be used    
F = Sh_l*1.26*D_ab*10^-4/(M_avg*b); // [kmole/square m.s]
N_a = F*log((1-y_a2)/(1-y_a1)); // [kmole/square m.s]

// The total mass rate of evaporation over the surface of the plate
S = 1.5*3; // [square m]
M_a = 78.1; // [gram/mole]
wa = N_a*S*M_a*60*1000; // [gram/min]

V = wa/row_a; // [volumetric flow rate, ml/min]

printf("Liquid benzene should be supplied at the top of the plate at the rate %f ml/min so that evaporation will just prevent it from reaching the bottom of the plate.\n\n",V);
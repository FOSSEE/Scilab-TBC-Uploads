clc;
warning("off");
printf("\n\n example7_19 - pg317");
// given
p=749/760;  //[atm]
T=21+273.15;  //[K]
R=82.06;  //[atm*cm^3/K] - gas constant
v=(R*T)/p;  //[cm^3/mole] - molar volume
M=29;  //[g/mole] - molecular weight
pair=M/v;
m_air=53.32;  //[g]
m_h2o=50.22;  //[g]
ph2o=0.998;  //[g/cm^3] - density of water
V=(m_air-m_h2o)/(ph2o-pair);  //[cm^3]
density=m_air/V;
printf("\n\n The density of coin is \n density=%fg/cm^3",density);
printf("\n\n Consulting a handbook it is seen that this result is correct density for gold");


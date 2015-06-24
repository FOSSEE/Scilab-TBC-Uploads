clc;
M1=28.02; // Molecular mass of N2
M2=32; // Molecular mass of O2
M3=39.91; // Molecular mass of Ar
M4=44; // Molecular mass of CO2
M5=2.02; // Molecular mass of H2
y1=0.7803; // Part by volume of N2 in dry atmospheric air
y2=0.2099; // Part by volume of O2 in dry atmospheric air
y3=0.0094; // Part by volume of Ar in dry atmospheric air
y4=0.0003; // Part by volume of CO2 in dry atmospheric air
y5=0.0001; // Part by volume of H2 in dry atmospheric air
R_1=8.3143; // Universal gas constant of air in kJ/kmol K
// (a).Average molecular mass and apperent gas constant of dry atmospheric air
M=(y1*M1)+(y2*M2)+(y3*M3)+(y4*M4)+(y5*M5); // Average molecular mass
R=R_1/M; //Apperent gas constant of dry atmospheric air
disp ("kJ/kg K",R,"Apperent gas constant of dry atmospheric air =","kmol",M,"Average molecular mass = ","(a).Average molecular mass and apperent gas constant of dry atmospheric air");
// (b).The fraction of each component
m1=(M1*y1)/M;//The fraction of N2 component
m2=(M2*y2)/M;//The fraction of O2 component
m3=(M3*y3)/M;//The fraction of Ar component
m4=(M4*y4)/M;//The fraction of CO2 component
m5=(M5*y5)/M;//The fraction of H2 component
disp (m5,m4,m3,m2,m1,"(b).The fraction of N2,O2,Ar,CO2,H2 components are given below respectively ");


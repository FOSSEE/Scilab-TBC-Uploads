clc;
M1=44; // Molecular mass of CO2
M2=32; // Molecular mass of O2
M3=28; // Molecular mass of CO
M4=28; // Molecular mass of N2
y1=0.1; // Part by volume of CO2 in exhaust gas
y2=0.06; // Part by volume of O2 in exhaust gas
y3=0.03; // Part by volume of CO in exhaust gas
y4=0.81; // Part by volume of N2 in exhaust gas
R_1=8.3143; // Universal gas constant  in kJ/kmol K
// (a).Average molecular mass and apperent gas constant of exhaust gas
M=(y1*M1)+(y2*M2)+(y3*M3)+(y4*M4); // Average molecular mass
R=R_1/M; //Apperent gas constant of dry atmospheric air
disp ("kJ/kg K",R,"Apperent gas constant of dry atmospheric air =","kmol",M,"Average molecular mass = ","(a).Average molecular mass and apperent gas constant of exhaust gas");
// (b).The fraction of each component
m1=(M1*y1)/M;//The fraction of CO2 component
m2=(M2*y2)/M;//The fraction of O2 component
m3=(M3*y3)/M;//The fraction of CO component
m4=(M4*y4)/M;//The fraction of N2 component
disp (m4,m3,m2,m1,"(b).The fraction of CO2,O2,CO,N2 components are given below respectively ");

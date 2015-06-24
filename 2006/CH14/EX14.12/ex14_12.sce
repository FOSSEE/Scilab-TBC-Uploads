clc;
// the combustion equation
// n1C3H8+n2O2+n3 N2 → n4 CO2+ n5 H2O+n6 O2+n7 N2
T0=298; // Temperature of surroundings in kelvin
// (a).Product species at 25 oC and 1 atm
d_gfC3H8=-24290; d_gfCO2=-394359; d_gfH2O=-228570; // in kJ/kmol
GR=d_gfC3H8;
GP=3*d_gfCO2+4*d_gfH2O;
Wmax=GR-GP; // Maximum possible work output
M=44;//Molecular weight
Wmax=Wmax/M;
disp ("kJ/kg fuel   (answer mentioned in the textbook is wrong)",Wmax,"Maximum possible work output = ","(a).");
// (b).The actual partial pressures of products
n1=1; n2=20; n3=75.2;
n4=3; n5=4; n6=15; n7=75.2; // refer equation
SR=19233; SP=19147; // in kJ/K from table
HR=-104680; // in kJ/kmol fuel
d_h0fCO2=-393509; d_h0fH2O=-241818; // in kJ/kmol
HP=3*d_h0fCO2+4*d_h0fH2O;
Wmax=HR-HP-T0*(SR-SP); // Maximum possible work output
Wmax=Wmax/M;
disp ("kJ/kg   (round off error)",Wmax,"Maximum possible work output = ","(b).");

clc;
m=1; // Mass of water in kg
T1=300; // Temperature of water in kelvin
C=4.1868; // Specific heat in kJ/kg K
// (a). Heat Transfer
T2=500; // Temperature of heat reservoir in kelvin
Q=m*C*(T2-T1); // Heat transfer
del_Swater=m*C*log (T2/T1); // Entropy change of water
del_Sreservoir=-Q/T2;  // Entropy change of reservoir
del_Suniverse=del_Swater+del_Sreservoir; // Entropy change of universe
disp ("kJ/K",del_Suniverse,"Entropy change of universe =","(a).Heat Transfer");
//   (b).Heat Transfer in each reservoir
T2=400; // Temperature of intermediate reservoir in kelvin
T3=500; // Temperature of heat reservoir in kelvin
Q=m*C*(T3-T2); // Heat transfer
del_Swater=m*C*(log (T2/T1)+log (T3/T2)); // Entropy change of water
del_SreservoirI=-Q/T2;  // Entropy change of reservoir I
del_SreservoirII=-Q/T3;  // Entropy change of reservoir II
del_Suniverse=del_Swater+del_SreservoirI+del_SreservoirII; // Entropy change of universe
disp ("kJ/K",del_Suniverse,"Entropy change of universe =","(b).Heat Transfer in each reservoir");

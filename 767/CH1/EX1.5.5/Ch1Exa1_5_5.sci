// Scilab code Exa1.5.5 : Calculation of mass defect and packing fraction from given data Page : 38 (2011)
amu = 931.49; // Atomic mass unit, MeV
M_p = 1.007825; // Mass of proton, amu
M_n = 1.008663;  // Mass of neutron, amu
A = 2;       // Mass number of deutron, amu
M_D = 2.014103;    // Mass of deuteron nucleus, amu
M_Defect = (M_p+M_n-M_D)*amu;     // Mass defect of the nucleus, MeV
P_fraction = (M_D - A)/A;     // Packing fraction of nucleus
printf("\n Mass defect      %4.2f MeV\n Packing fraction    %7.5f",M_Defect,P_fraction);

// Result
//   Mass defect      2.22 MeV
//   Packing fraction    0.00705
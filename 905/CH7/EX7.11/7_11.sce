clear;
clc;

// Illustration 7.11
// Page: 466

printf('Illustration 7.11 -  Page: 466\n\n');

// solution
//*****Data*****//
// Preliminary Design of an RDC
T = 293; // [K]
F1 = 12250; // [flow rate for dispersed organic phase, kg/h]
F2 = 11340; // [flow rate for continuous aqueous phase, kg/h]
d1 = 858; // [kg/cubic m]
d2 = 998; // [kg/cubic m]
n = 12; // [Equilibrium stages]
//*****//
Qd = F1/d1; // [cubic m/h]
Qc = F2/d2; // [cubic m/h]

// Assume that based on information in Table 7.5
// Vd+Vc = V = 22 m/h
V = 22; // [m/h]
// Therefore column cross sectional area 
Ac = (Qd+Qc)/V; // [square m]
// Column diameter
Dt = sqrt(4*Ac/%pi); // [m]

// Assume that based on information in Table 7.5
// 1/HETS = 2.5 to 3.5   m^-1
// Therefore
HETS = 1/3; // [m/theoritical stages]
// Column height
Z = n*HETS; // [m]
printf("The height and diameter of an RDC to extract acetone from a dilute toluene-acetone solution is %f m and %f square m respectively\n\n",Z,Dt);  
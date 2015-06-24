clear;
clc;

// Illustration 9.9
// Page: 395

printf('Illustration 9.9 - Page: 395\n\n');

// solution

//****Data****//
P = 695;// [kN/square m]
//********//

// a:methanol b:water
// From Illustration 9.8:
Ma = 32.04;// [kg/kmol]
Mb = 18.02;// [kg/kmol]
F = 216.8;// [kmol/h]
Tempo = 19.7;// [OC]
zF = 0.360;// [mole fraction methanol]
HF = 2533;// [kJ/kmol]
D = 84.4;// [kkmol/h]
zD = 0.915;// [mole fraction methanol]
HD = 3640;// [kJ/kmol]
Qc = 5990000;// [kJ/h]
// Since the bottom will essentially be pure water:
HW = 6094;// [kJ/kmol]
// From Steam tables:
Hs = 2699;// [enthalpy of saturated steam, kJ/kg]
hW = 4.2*(Tempo-0);// [enthalpy of water, kJ/kg]
HgNpPlus1 = (Hs-hW)*Mb;// [kJ/kmol]
// (1): GNpPlus1-W = D-F [From Eqn. 9.86]
// (2): (GNpPlus1*HgNpPlus1)-(W*HW) = (D*HD)+Qc-(F*HF) [From Eqn. 9.88]
a = [1 -1;HgNpPlus1 -HW];
b = [D-F;(D*HD)+Qc-(F*HF)];
soln = a\b;
GNpPlus1 = soln(1);// [kmol/h]
W = soln(2);// [kmol/h]
// From Eqn. 9.87:
deff('[y] = f61(xW)','y = (F*zF)-((D*zD)+(W*xW))');
xW = fsolve(2,f61);
// The enthalpy of the solution at its bubble point is 6048 kJ/kmol, sufficiently closed to 6094 assumed earlier.
// For delta_w:
xdelta_w = W*xW/(W-GNpPlus1);
Q_dprime = ((W*HW)-(GNpPlus1*HgNpPlus1))/(W-GNpPlus1);// [kJ/kmol]
// From Fig 9.27 ad Fig. 9.28, and for the stripping section:
Np = 9.5;
printf("Steam Rate: %f kmol/h\n",GNpPlus1);
printf("Bottom Composition: xW: %f\n",xW);
printf("Number of theoretical stages: %f\n",Np);
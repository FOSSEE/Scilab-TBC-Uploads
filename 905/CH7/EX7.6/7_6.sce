clear;
clc;

// Illustration 7.6
// Page: 449

printf('Illustration 7.6 -  Page: 449\n\n');

// solution
//*****Data*****//
// C-styrene    A-ethylbenzene    B-diethylene glycol
F = 1000; // [kg/h]
XF = 0.6; // [wt fraction of styrene]
XPE = 0.9;
XN = 0.1;
// All above fractions are on solvent basis
// Equilibrium Data for Ethylbenzene (A)-Diethylene Glycol (B)-Styrene (C) at 298 K
// Data_eqm = [X Y];
// X - kg C/kg (A+C) in raffinate solution
// Y - kg C/kg (A+C) in extract solution
Data_eqm = [0 0;0.087 0.1429;0.1883 0.273;0.288 0.386;0.384 0.48;0.458 0.557;0.464 0.565;0.561 0.655;0.573 0.674;0.781 0.863;0.9 0.95;1 1];
//*****//

printf('Illustration 7.6(a) -  Page: 449\n\n');
// Solution(a)

// Minimum theoretical stages are determined on the XY equilibrium distribution diagram, stepping them off from the diagonal line to the equilibrium curve, beginning at XPE = 0.9 and ending at XN = 0.1

Data_opl = [0 0;0.09 0.09;0.18 0.18;0.27 0.27;0.36 0.36;0.45 0.45;0.54 0.54;0.63 0.63;0.72 0.72;0.81 0.81;0.90 0.90;1 1;];

scf(1);
plot(Data_eqm(:,1),Data_eqm(:,2),Data_opl(:,1),Data_opl(:,2));
xgrid();
legend('Equilibrium line','Operating line');
xlabel("X,kg C/kg (A+C) in raffinate solution");
ylabel("Y,kg C/kg (A+C) in extract solution");

// Figure 7.20
Nmin = 9; // [number of ideal stages]

printf("The minimum number of theoretical stages are %f.\n\n",Nmin);

printf('Illustration 7.6(b) -  Page: 450\n\n');
// Solution(b)

// Since the equilibrium-distribution curve is everywhere concave downward// ,the tie line which when extended passes through F provides the minimum
// reflux ratio
// From figure 7.19
NdeltaEm = 11.04;
NE1 = 3.1;
// From equation 7.30
// Y = R_O/P_E, external reflux ratio
Ymin = (NdeltaEm-NE1)/NE1; // [kg reflux/kg extract product]

printf("The minimum extract reflux ratio is %f kg reflux/kg extract product.\n\n",Ymin);

printf('Illustration 7.6(c) -  Page: 450\n\n');
// Solution(c)

Y = 1.5*Ymin; // [kg reflux/kg extract product]
// From equation 7.30
NdeltaE = Y*NE1+NE1;
// From figure 7.19
NdeltaR = -24.90;
// From figure 7.21
N = 17.5; // [number of equilibrium stages]

// From figure 7.19
// For XN = 0.1 NRN = 0.0083
NRN = 0.0083;
// Basis: 1 hour

// e = [P_E R_N] 
// Solution of simultaneous equation
function[f]=G(e)
    f(1) = F - e(1) - e(2);
    f(2) = F*XF-e(1)*XPE-e(2)*XN;
    funcprot(0);
endfunction
// Initial guess:
e = [600 300];
y = fsolve(e,G);
P_E = y(1); // [kg/h]
R_N = y(2); // [kg/h]

R_O = Y*P_E; // [kg/h]
E_1 = R_O+P_E; // [kg/h]

B_E = E_1*NE1; // [kg/h]
E1 = B_E+E_1; // [kg/h]
RN = R_N*(1+NRN); // [kg/h]
S = B_E+R_N*NRN; // [kg/h]

printf("The number of theoretical stages are %f.\n",N);
printf('The important flow quantities at an extract reflux ratio of 1.5 times the minimum value are\n\n');
printf(" PE = %f kg/h\n RN = %f kg/h\n RO = %f kg/h\n E1 = %f kg/h\n BE = %f kg/h\n E1 = %f kg/h\n RN = %f kg/h\n S = %f kg/h\n",P_E,R_N,R_O,E_1,B_E,E1,RN,S);
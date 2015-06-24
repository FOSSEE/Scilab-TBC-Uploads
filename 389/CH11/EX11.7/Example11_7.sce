clear;
clc;

// Illustration 11.7
// Page: 619

printf('Illustration 11.7 - Page: 619\n\n');

// Solution

//*****Data*****//
// a: C2H4 b:C3H8
// The equlibrium curve is plotted in Fig.11.33 (Pg 620)
// C3H8 is more strongly adsorbed component and composition in the gas and adsorbate are expressed as weight fraction C3H8.
Ma = 28;// [kg/kmol]
Mb = 44.1;// [kg/kmol]
xaF = 0.6;// [mole fraction]
xbF = 0.4;// [mole fraction]
xa1 = 0.05;// [mole fraction]
xa2 = 0.95;// [mole fraction]
//***************//

xF = xbF*Mb/((xbF*Mb)+(xaF*Ma));// [wt. fraction C3H8]
xb1 = 1-xa1;// [mole fraction]
x1 = xb1*Mb/((xb1*Mb)+xa1*Ma);// [wt. fraction C3H8]
xb2 = 1-xa2;// [mole fraction]
x2 = xb2*Mb/((xb2*Mb)+(xa2*Ma));// [wt. fraction C3H8]
// Basis: 100 kg feed gas
F = 100;// [kg]
// (1): R2+PE = F [From Eqn. 11.63]
// (2): (R2*x2)+(PE*x1) = (F*xF) [From Eqn. 11.64]
// Solving simultaneously:
a = [1 1;x2 x1];
b = [F;(F*xF)];
soln = a\b;
R2 = soln(1);// [kg]
PE = soln(2);// [kg]
// Point F at xF and point E1 at x1 are located on the diagram.
// From the diagram:
N1 = 4.57;// [kg carbon/kg adsorbate]
// The minimum reflux ratio is found as it is for the extraction.
delta_Em = 5.80;
Ratio = (delta_Em/N1)-1;// [kg reflux gas/kg product]
R1_m = Ratio*PE;// [kg]
E1_m = R1_m+PE;// [kg]
B_m = N1*E1_m;// [kg carbon/100 kg feed]
Ratio1 = 2*Ratio;
// From Eqn. 11.58:
N_deltaE = (Ratio1+1)*N1;// [kg carbon/kg adsorbate]
// Point deltaE is located on the diagram:
R1 = Ratio1*PE;// [kg]
E1 = R1+PE;// [kg]
B = N1*E1;// [kg]
N_deltaR = -(B/R2);// [kg carbon/kg adsorbate]
// Random lines such as the delta_RK are drawn from detaR, and the intersection of equilibrium curves are projected downward in the manner shown to provide the adsorption section operating curve.
// Similarly random lines such as delta_EJ are drawn from deltaE, and the intersections are projected downwards to provide the enriching section operating curve.
// Data = [x x_star]
Data = [0.967 0.825;0.90 0.710;0.80 0.60;0.70 0.50;0.60 0.43;0.512 0.39;0.40 0.193;0.30 0.090;0.20 0.041;0.0763 0.003];
Val = zeros(10);
for i = 1:10
    Val(i) = 1/((Data(i,1))-Data(i,2));
end
scf(36);
plot(Data(:,1),Val);
xgrid();
xlabel("x");
ylabel("1 / (x-x*)");
title("Graphical Integraion");
// The area under the curve between x1 & xF, for the enriching section:
Area1 = 2.65;
// The area under the curve between xF & x2, for the adsorption section:
Area2 = 2.67;
r = Ma/Mb;
// From Eqn.11.66:
// For the enriching section:
NtoG1 = Area1-log((1+(r-1)*x1)/(1+(r-1)*xF));
// For the adsortion section:
NtoG2 = Area2-log((1+(r-1)*x1)/(1+(r-1)*xF));
NtoG = NtoG1+NtoG2;
printf("Number of transfer units: %f",NtoG);
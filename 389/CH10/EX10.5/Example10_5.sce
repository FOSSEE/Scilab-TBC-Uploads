clear;
clc;

// Illustration 10.5
// Page: 510

printf('Illustration 10.5 - Page: 510\n\n');

// solution

//****Data****//
// a:ethylbenzne b:diethylene glycol c:styrene
F = 1000;// [kg/h]
xF = 0.5;// [Wt. fraction styrene]
xPE = 0.9;// [kg styrene/kg hydrocarbon]
xRNp = 0.1;// [kg styrene/kg hydrocarbon]
//******//

// X: kg styrene/kg hydrocarbon
// Y: kg styrene/kg hydrocarbon
// N:kg glycol/kg hydrocarbon
// Equilibrium data:
// Hydrocarbon rich solutions:
// Eqb1 = [X N]
Eqb1 = [0 0.00675;0.0870 0.00817;0.1833 0.00938;0.288 0.01010;0.384 0.01101;0.458 0.01215;0.464 0.01215;0.561 0.01410;0.573 0.01405;0.781 0.01833;1 0.0256];
// Solvent rich solutions:
// Eqb2 = [Y_star N]
Eqb2 = [0 8.62;0.1429 7.71;0.273 6.81;0.386 6.04;0.480 5.44;0.557 5.02;0.565 4.95;0.655 4.46;0.674 4.37;0.833 3.47;1 2.69];
scf(26);
plot(Eqb1(:,1),Eqb1(:,2),Eqb2(:,1),Eqb2(:,2));
xgrid();
legend("X Vs N","Y Vs N");
xlabel("kg styrene / kg hydrocarbon");
ylabel("kg diethylene glycol / kg hydrocarbon");
title("Equilibrium Data")
// In Fig. 10.31 (Pg 512):
// Point E1 is located.
NE1 = 3.10;

// solution (a)

// From Fig. 10.30 (Pg 511):
Np = 9.5;
printf("Minimum number of theoretical stages: %f\n",Np);
printf("\n");

// Solution (b)

// The tie line when extended passes through F provides the minimum reflux ratio.
// From the plot:
N_deltaEm = 20.76;
// From Eqn. 10.48:
Ratiom = (N_deltaEm-NE1)/NE1;// [kg reflux/kg extract product]
printf("Minimum extract reflux ratio: %f kg reflux/kg extract product\n",Ratiom);
printf("\n");

// Solution (c)

Ratio = 1.5*Ratiom;// [kg reflux/kg extract product]
// From Eqn. 10.48;
N_deltaE = (Ratio*NE1)+NE1;
// Point deltaE is plotted.
// A straight line from deltaE through F intersects line X = 0.10 at deltaR.
N_deltaR = -29.6;
// In Fig. 10.31 (Pg 512):
// Random lines are drawn from deltaE for the concentrations to the right of F, and from deltaR for those to the left,and intersection of these with the solubility curves provide the coordinates of the opeating curve.
// The tie line data are plotted directly to provide the equilibrium curve.
// From Fig. 10.32 (Pg 513):
Np = 15.5;
// Feed is to be introduced in the seventh from the extract product end of cascade.
// From Fig. 10.31 (Pg 512):
XRNp = 0.10;
NRNp = 0.0082;
// Basis:1 hour.
// Overall plant balance:
// (1): PE_prime+RNp_prime = F
// C Balance
// (2): PE_prime*(1-XRNp)+RNp_prime*XRNp = F*xF
// Solving (1) & (2) simultaneously:
a = [1 1;(1-XRNp) XRNp];
b = [F;F*xF];
soln = a\b;
PE_prime = soln(1);// [kg/h]
RNp_prime = soln(2);// [kg/h]
RO_prime = Ratio*PE_prime;// [kg/h]
// From Eqn 10.39:
E1_prime = RO_prime+PE_prime;// [kg/h]
BE = E1_prime*NE1;// [kg/h]
E1 = BE+E1_prime;// [kg/h]
RNp = RNp_prime*(1+NRNp);// [kg/h]
S = BE+(RNp_prime*NRNp);// [kg/h]
printf("Number of theoretical stages: %f\n",Np);
printf("Extract Flow Rate: %f kg/h\n",E1);
printf("solvent Flow Rate: %f kg/h\n",S);
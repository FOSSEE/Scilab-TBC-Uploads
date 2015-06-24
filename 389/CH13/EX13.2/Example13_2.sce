clear;
clc;

// Illustration 13.2
// Page: 749

printf('Illustration 13.2 - Page: 749\n\n');

// Solution  

//***Data***//
// Eqb=[x(Wt fraction NaOH in clear solution) N(kg CaCO3/kg soln in settled sludge) y*(wt fraction NaOH in soln of settled sludge)]
// a=H2O b=CaCO3 c=NaOH
Eqb = [0.090 0.495 0.0917;0.0700 0.525 0.0762;0.0473 0.568 0.0608;0.0330 0.600 0.0452;0.0208 0.620 0.0295;0.01187 0.650 0.0204;0.00710 0.659 0.01435;0.00450 0.666 0.01015];
deff('[y]=f80(x)','y=0');
x = 0:0.01:0.12;
Mass_c = 0.1;// [kg]
Mass_b = 0.125;// [kg]
Mass_a = 0.9;// [kg]
//**************//

scf(42);
plot(x,f80,Eqb(:,3),Eqb(:,2));
xgrid();
xlabel("x,y Wt. fraction of NaOH in loquid");
ylabel("N kg CaCO3 / kg solution");
legend("N Vs x","N Vs Y");
title("Equilibrium Plot")
// Basis: 1 kg soln in original mixture.
// As in Fig. 13.27 (Pg 750)
// The original mixture corresponds to M1:
NM1 = 0.125;// [kg CaCO3/kg soln]
yM1 = 0.1;// [kg NaOH/kg solution]
// The tie line through M1 is drawn. At point E1 representing the settled sludge:
N1 = 0.47;// [kg CaCO3/kg soln]
y1 = 0.100;// [kg NaOH/kg solution]
E1 = Mass_b/N1;// [kg soln. in sludge]
Ro = 1-E1;// [kg clear soln drawn]

// Stage 2:
xo = 0;// [kg NaOH/kg soln]
// By Eqn. 13.11:
M2 = E1+Ro;// [kg liquid]
// By Eqn. 13.12:
NM2 = Mass_b/(E1+Ro);// [kg CaCO3/kg soln]
// M2 is located on line RoE1. At this value of N, and the tie line through M2 is drawn. At E2:
N2 = 0.62;// [kg CaCO3/kg soln]
y2 = 0.035;// [kg NaOH/kg solution]
E2 = Mass_b/N2;// [kg soln. in sludge]
Ro = 1-E2;// [kg clear soln drawn]

// Stage 3:
xo = 0;// [kg NaOH/kg soln]
// By Eqn. 13.11:
M3 = E2+Ro;// [kg liquid]
// By Eqn. 13.12:
NM3 = Mass_b/M3;// [kg CaCO3/kg soln]
// Tie line E3R3 is located through M3.At E3:
N3 = 0.662;// [kg CaCO3/kg soln]
y3 = 0.012;// [kg NaOH/kg solution]
// By Eqn. 13.8:
E3 = Mass_b/N3;// [kg soln. in sludge]
printf("The fraction of original NaOH in the slurry: %f \n",E3*y3/Mass_c);
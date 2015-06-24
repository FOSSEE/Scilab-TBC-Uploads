clear;
clc;

// Illustration 10.3
// Page: 502

printf('Illustration 10.3 - Page: 502\n\n');

// Solution

//****Data****//
// a:water b:isopropyl ether c:acetic acid
F = 8000;// [kg/h]
xF = 0.30;// [wt. fraction acetic acid]
//*******//

// From Illustration 10.1 (Pg 494)
// Equilibrium Data:
// Eqb = [y_star*100 x*100]
Eqb = [0.18 0.69;0.37 1.41;0.79 2.89;1.93 6.42;4.82 13.30;11.40 25.50;21.60 36.70;31.10 44.30;36.20 46.40];

// Solution(a)

// From Figure 10.23 (Pg 503):
// For minimum solvent rate:
y1 = 0.143;// [Wt fraction of acetic acid in isopropyl ether layer]
xM = 0.114;// [Wt fraction of acetic acid in water layer]
// From Eqn. 10.24:
Bm = (F*xF/xM)-F;// [kg/h]
printf("Minimm solvent rate: %f kg/h\n",Bm);
printf("\n");

// Solution (b)

B = 20000;// [kg solvent/h]
yS = 0;
S = B;
// From Eqn 10.24:
xM = ((F*xF)+(S*yS))/(F+S);
// From Fig. 10.23 (Pg 503):
y1 = 0.10;
// Operating curve data:
// Operat = [YsPlus1 Xs]
Operat = [0 0.02;0.01 0.055;0.02 0.09;0.04 0.150;0.06 0.205;0.08 0.250;0.1 0.3];
scf(23);
plot(Eqb(:,2)/100,Eqb(:,1)/100,Operat(:,2),Operat(:,1));
xgrid();
a = gca();
a.data_bounds = [0 0;xF y1];
legend("Operating Line","Equilibrium Line");
xlabel("Wt. fraction acetic acid in water solution");
ylabel("Wt. fraction acetic acid in isopropyl ether solution");
title("Solution 10.3")
// From Figure scf(22):
xNp = 0.02;
Np = 7.6;
// By acid balance:
M = B+F;
E1 = M*(xM-xNp)/(y1-xNp);// [kg/h]
RNp = M-E1;// [kg/h]
printf("Number of theoretical Stages: %f\n",Np);
printf("Weight of the extract: %d kg/h\n",E1);
printf("Weight of the raffinate %d kg/h\n",RNp);
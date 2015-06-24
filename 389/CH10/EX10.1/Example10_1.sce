clear;
clc;

// Illustration 10.1
// Page: 494

printf('Illustration 10.1 - Page: 494\n\n');

// solution

//****Data****//
// a:water b:isopropyl ether c:acetic acid
xF = 0.30;// [mol fraction]
yS = 0;// [mol fraction]
S1 = 40;// [kg]
B1 = 40;// [kg]
//*******//

// Equilibrium data at 20 OC:
// Wa: Wt. percent of a
// Wb: Wt. percent of b
// Wc: Wt. percent of c
// Data1 = [Wc Wa Wb]
// Data1: water layer
Data1 = [0.69 98.1 1.2;1.41 97.1 1.5;2.89 95.5 1.6;6.42 91.7 1.9;13.30 84.4 2.3;25.50 71.1 3.4;36.70 58.9 4.4;44.30 45.1 10.6;46.40 37.1 16.5];
// Data2: isopropyl ether layer
Data2 = [0.18 0.5 99.3;0.37 0.7 98.9;0.79 0.8 98.4;1.93 1 97.1;4.82 1.9 93.3;11.40 3.9 84.7;21.60 6.9 71.5;31.10 10.8 58.1;36.20 15.1 48.7];
scf(20);
plot(Data1(:,3)/100,Data1(:,1)/100,Data2(:,3)/100,Data2(:,1)/100);
xgrid();
xlabel("Wt fraction of isopropyl ether");
ylabel("Wt fraction of acetic acid");
// x: Wt fraction of acetic acid in water layer.
// y: Wt fraction of acetic acid in isopropyl layer.
legend("x Vs fraction ether","y Vs fraction ether");
// The rectangular coordinates of Fig 10.9(a) will be used but only upto x = 0.30
a = gca();
a.data_bounds = [0 0;1 0.3];
// Stage 1:
F = 100;// [kg]
// From Eqn. 10.4:
M1 = F+S1;// [kg]
// From Eqn. 10.5:
xM1 = ((F*xF)+(S1*yS))/M1;
// From Fig. 10.15 (Pg 495):
// Point M1 is located on the line FB and with the help of tie line passing through M1:
x1 = 0.258;// [mol fraction]
y1 = 0.117;// [mol fraction]
// From Eqn. 10.8:
E1 = (M1*(xM1-x1)/(y1-x1));// [kg]
// From Eqn. 10.4:
R1 = M1-E1;// [kg]

// Stage 2:
S2 = 40;// [kg]
B2 = 40;// [kg]
// From Eqn. 10.15:
M2 = R1+B2;// [kg]
// From Eqn. 10.16:
xM2 = ((R1*x1)+(S2*yS))/M2;
// Point M2 is located on the line R1B and the tie line passing through R2E2 through M2:
x2 = 0.227;
y2 = 0.095;
// From Eqn. 10.8:
E2 = (M2*(xM2-x2)/(y2-x2));// [kg]
// From Eqn. 10.4:
R2 = M2-E2;// [kg]

// Stage 3:
S3 = 40;// [kg]
B3 = 40;// [kg]
// From Eqn. 10.15:
M3 = R2+B3;// [kg]
// From Eqn. 10.16:
xM3 = ((R2*x2)+(S3*yS))/M3;
// Point M3 is located on the line R2B and the tie line passing through R3E3 through M3:
x3 = 0.20;// [mol fraction]
y3 = 0.078;// [mol fraction]
// From Eqn. 10.8:
E3 = (M3*(xM3-x3)/(y3-x3));// [kg]
// From Eqn. 10.4:
R3 = M3-E3;// [kg]
Ac = x3*R3;
printf("The composited extract is %f kg\n",(E1+E2+E3));
printf("The acid content is %f kg\n",((E1*y1)+(E2*y2)+(E3*y3)));
printf("\n");

// If an extraction to give the same final raffinate concentration were to be done in single stage, the point M would be at the intersection of tie line R3E3 and the line BF.
x = 0.20;// [mol fraction]
xM = 0.12;// [mol fraction]
// From Eqn. 10.6:
S = F*(xF-xM)/(xM-yS);// [kg]
printf("%f kg of solvent would be recquired if the same final raffinate concentration were to be obtained with one stage.\n",S);
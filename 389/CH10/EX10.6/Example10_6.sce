clear;
clc;

// Illustration 10.6
// Page: 516

printf('Illustration 10.6 - Page: 516\n\n');

// solution

//****Data****//
// a:heptane b:p-chloronitrobenzene c:o-chloronitrobenzene d:aq. methanol
xb = 0.4;// [Wt fraction]
xC = 0.60;// [Wt fraction]
F = 100;// [kg]
// The para isomer(b) favours the heptane(a) and the ortho isomer(c) favours the methanol(d).
// Basis: 1 hour.
A = 2400;// [kg/h]
D = 2760;// [kg/h]
xbW = 0.8;// [Wt fraction]
xbZ = 0.15;// [Wt fraction]
kb=1.35;
kc=0.835;
//*******//

B = xb*F;// [kg]
C = F-B;// [kg]
// W = kg A rich product, after solvent removal
// Z = kg D rich product, after solvent removal
// B balance:
// (1): (0.80*W)+(0.15*Z) = B
// C balance:
// (2): (0.20*W)+(0.85*Z) = C
// Solving (1) & (2) simultaneously:
a = [0.80 0.15;0.20 0.85];
b = [B;C];
soln = a\b;
W = soln(1);
Z = soln(2);
Wb = xbW*W;// [kg]
Wc = W-Wb;// [kg]
Zb = xbZ*Z;// [kg]
Zc = Z-Zb;// [kg]
xB1_prime = Zb/D;
xC1_prime = Zc/D;
yB1_prime = Wb/D;
yC1_prime = Wc/D;
DbyA = D/A;
// Equilibrium curve:
// First distribution coeffecient: yB_star/xB_prime = 1.35
deff('[y] = f68(x1)','y = kb*x1');
x1 = 0:0.01:0.06;
// Second distribution coeffecient: yC_star/xC_prime = 0.835
deff('[y] = f69(x2)','y = kc*x2');
x2 = 0:0.01:0.06;
// Operating Line, corresponding to First distribution coeffecient:
deff('[y] = f70(x3)','y = (DbyA*x3)+yB1_prime');
x3 = 0:0.01:0.06;
deff('[y] = f71(x4)','y = DbyA*(x4-xB1_prime)');
x4 = 0:0.01:0.06;
// Operating Line, corresponding to Second distribution coeffecient:
deff('[y] = f72(x5)','y = (DbyA*x5)+yC1_prime');
x5 = 0:0.01:0.06;
deff('[y] = f73(x6)','y = (DbyA)*(x6-xC1_prime)');
x6 = 0:0.01:0.06;
scf(27);
plot(x1,f68,x3,f70,x4,f71);
xgrid();
legend("Equilibrium curve","Operating curve","Operating curve");
xlabel("xB_prime");
ylabel("yB_prime");
title("yB_star/xB_prime = 1.35");
a1 = gca();
a1.data_bounds = [0 0;0.05 0.07];
scf(28);
plot(x2,f69,x5,f72,x6,f73);
xgrid();
legend("Equilibrium curve","Operating curve","Operating curve");
xlabel("xC_prime");
ylabel("yC_prime");
title("yC_star/xC_prime = 0.835");
a2 = gca();
a2.data_bounds = [0 0;0.06 0.07];
// The stages are constructed.
// The feed matching is shown on Fig. 10.37 (Pg 518):
f_prime = 6.6;
fstage = 4.6;
printf("Number of ideal stage is %f\n",fstage+f_prime-1);
printf("The feed stage is %fth from the solvent-D inlet\n",fstage);
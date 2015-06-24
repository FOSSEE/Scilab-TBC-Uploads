clear;
clc;
//Page No.349
// Example 12.1
printf('Example 12.1\n\n');
// Solution 

//(a) fig.E12.1a
F = 10000 ;//[lb/hr]
//Given
NaOH_F = 40/100 ;//[wt. fraction]
NaOH_P1 = 95/100 ;//[wt. fraction of NaOH filter cake]
NaOH_P2 = (0.05 *  45)/100 ;//[wt. fraction of NaOH in NaOH soln.]
H2O_P2 = (0.05 *  55)/100 ;//[wt. fraction of H2O in NaOH soln.]
NaOH_R = 45/100;//[wt. fraction]
NaOH_G = 50/100;//[wt. fraction]
//Get P from overall NaOH balance
P = (NaOH_F *  F)/[NaOH_P1 + NaOH_P2] ;//[lb/hr]
// Get W from overall total balance
W = F-P ;// [lb/hr]

// Solve following eqn. simultaneously to get G & R
// NaOH_G *  G = F *  NaOH_F + NaOH_R *  R (NaOH balance on crystallizer)
//G = R + P (overall balance)
a = [NaOH_G -NaOH_R;1 -1] ;// matrix formed of coefficients of unknown
b = [F *  NaOH_F;P];// matrix formed by constant
x = a\b ;// matrix of solutions . x(1) = G, x(2) = R
G = x(1) ;// [lb/hr]
R = x(2) ;// [lb/hr]
printf('(a)  Flow rate of water removed by evaporator is  %.1f lb/hr\n',W);
printf('      The recycle rate of the process is %.1f lb/hr\n',R);

// (b) fig.E12.1b
//given
NaOH_H = 45/100 ;//[wt fraction]
H2O_H = 55/100 ;//[wt fraction]
// Get H & G by solving following eqn. simultaneously
//NaOH_G *  G = [NaOH_P1 + NaOH_P2] *  P  + NaOH_H *  H (NaOH balance on crystallizer)
//H2O_G *  G = H2O_P2 *  P  +  H2O_H *  H (H2O balance on crystallizer)
a1 = [NaOH_G -NaOH_H;NaOH_G -H2O_H] ;// matrix formed of coefficients of unknown
b1 = [((NaOH_P1 + NaOH_P2) *  P);(H2O_P2) *  P];// matrix formed by constant
x1 = ((a1)^-1) *  b1 ;// matrix of solutions nw_G = x1(1);H = x1(2)
nw_G1 = x1(1) ;// [lb/hr]
H = x1(2);// [lb/hr]
// By overall NaOH balance
nw_F = (NaOH_H *  H + (NaOH_P1 + NaOH_P2) *  P)/NaOH_F ;//[lb/hr]
printf(' (b)  Total feed rate when filterate is not recycled is %.1f lb/hr\n',nw_F);
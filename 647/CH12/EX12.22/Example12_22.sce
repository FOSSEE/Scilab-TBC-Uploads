clear;
clc;

// Example: 12.22
// Page: 508

printf("Example: 12.22 - Page: 508\n\n");

// Solution

//*********Data*********//
// Reaction: 
// C4H10 -----------> C2H4 + C2H6 ....................................(A)
// C4H10 -----------> C3H6 + CH4 .................................... (B)
T = 750;// [K]
P = 1.2;// [bar]
Ka = 3.856;
Kb = 268.4;
//************************//

// Let
// ea = Degree of conversion of C4H10 in reaction (A)
// eb = Degree of conversion of C4H10 in reaction (B)

// Moles in Feed:
nC4H10_feed = 1;
nC2H4_feed = 0;
nC2H6_feed = 0;
nC3H6_feed = 0;
nCH4_feed = 0;

// Moles at Equilibrium:
// nC4H10_eqb = 1 - ea - eb
// nC2H4_eqb = ea
// nC2H6_eqb = ea
// nC3H6_eqb = eb
// nCH4_eqb = eb

// Total moles at equilibrium = 1 - ea - eb + ea + eb + eb = 1 + ea + eb

// Mole Fraction:
// yC4H10_eqb = (1 - ea - eb)/(1 + ea + eb)
// yC2H4_eqb = ea/(1 + ea + eb)
// yC2H6_eqb = ea/(1 + ea + eb)
// yC3H6_eqb = eb/(1 + ea + eb)
// yCH4_eqb = eb/(1 + ea + eb)

// Sum of the stoichometric coeffecient:
va = 1 + 1 - 1;
vb = 1 + 1 - 1;

// e = [ea eb]
// Solution of simultaneous equation
function[f]=F(e)
    f(1) = (((e(1)/(1 + e(1) + e(2)))*(e(1)/(1 + e(1) + e(2))))/((1 - e(1) - e(2))/(1 + e(1) + e(2))))*P^va - Ka;
    f(2) = (((e(2)/(1 + e(1) + e(2)))*(e(2)/(1 + e(1) + e(2))))/((1 - e(1) - e(2))/(1 + e(1) + e(2))))*P^vb - Kb;
    funcprot(0);
endfunction

// Initial guess:
e = [0.1 0.8];
y = fsolve(e,F);
ea = y(1);
eb = y(2);
yC4H10_eqb = (1 - ea - eb)/(1 + ea + eb);
yC2H4_eqb = ea/(1 + ea + eb);
yC2H6_eqb = ea/(1 + ea + eb);
yC3H6_eqb = eb/(1 + ea + eb);
yCH4_eqb = eb/(1 + ea + eb);

printf("At Equilibrium\n");
printf("yC4H10 = %.4f\n",yC4H10_eqb);
printf("yC2H4 = %.4f\n",yC2H4_eqb);
printf("yC2H6 = %.4f\n",yC2H6_eqb);
printf("yC3H6 = %.4f\n",yC3H6_eqb);
printf("yCH4 = %.4f\n",yCH4_eqb);
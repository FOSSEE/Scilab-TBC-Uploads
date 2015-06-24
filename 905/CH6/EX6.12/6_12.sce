clear;
clc;

// Illustration 6.12
// Page: 377
printf('Illustration 6.12 -  Page: 377\n\n');

// solution
//*****Data*****//
// Componenets  A-propane  B-pentane  C-methane  D-ethane  E-butane  F-hexane
// x-mole fraction  a-relative volatility
xA = 0.25;  aA = 4.08;
xB = 0.11;  aB = 1.00;
xC = 0.26;  aC = 39.47;
xD = 0.09;  aD = 10.00;
xE = 0.17;  aE = 2.11;
xF = 0.12;  aF = 0.50;
// Since propane and pentane are light and heavy key respectively
// Methane and ethane are LNK, hexane is a HNK, while butane is a “sandwich component,” meaning that it has a volatility intermediate between the keys.

FRlkd = 0.98;
FRhkd = 0.01;
// For methane
D_CR = (aC-1)/(aA-1)*FRlkd + (aA-aC)/(aA-1)*FRhkd;
// For ethane
D_DR = (aD-1)/(aA-1)*FRlkd + (aA-aD)/(aA-1)*FRhkd;
// For butane
D_ER = (aE-1)/(aA-1)*FRlkd + (aA-aE)/(aA-1)*FRhkd;
// For hexane
D_FR = (aF-1)/(aA-1)*FRlkd + (aA-aF)/(aA-1)*FRhkd;
// Since the feed is 66% vaporized
q = 1-0.66;

// Now equation 6.82 is solved for two values of Q
deff('[y] = f14(Q1)','y = 0.66 - aA*xA/(aA-Q1)-aB*xB/(aB-Q1)-aC*xC/(aC-Q1)-aD*xD/(aD-Q1)-aE*xE/(aE-Q1)-aF*xF/(aF-Q1)');
Q1 = fsolve(1.2,f14);

deff('[y] = f15(Q2)','y = 0.66 - aA*xA/(aA-Q2)-aB*xB/(aB-Q2)-aC*xC/(aC-Q2)-aD*xD/(aD-Q2)-aE*xE/(aE-Q2)-aF*xF/(aF-Q2)');
Q2 = fsolve(2.5,f15);

// Basis: 100 mole of feed
F = 100; // [mole]
// Let d1 = Dxad, d2 = Dxbd, d3 = Dxcd, and so on
d1 = F*xA*FRlkd; // [moles of propane]
d2 = F*xB*FRhkd; // [moles of pentane]
d3 = F*xC; // [moles of methane]
d4 = F*xD; // [moles of ethane]
d6 = F*xF*0; // [moles of hexane]
// And d5 is unknown
// Applying equation 6,78 for each value of Q

// Solution of simultaneous equation 
function[f]=H(e)
    f(1) = e(1) - aA*d1/(aA-Q1)-aB*d2/(aB-Q1)-aC*d3/(aC-Q1)-aD*d4/(aD-Q1)-aE*e(2)/(aE-Q1)-aF*d6/(aF-Q1);
    f(2) = e(1) - aA*d1/(aA-Q2)-aB*d2/(aB-Q2)-aC*d3/(aC-Q2)-aD*d4/(aD-Q2)-aE*e(2)/(aE-Q2)-aF*d6/(aF-Q2);
    funcprot(0);
endfunction

// Initial guess
e = [90 5];
y = fsolve(e,H);
Vmin = y(1); // [mole]
d5 = y(2); // [d5 = Dxed, mole]

// From equ 6.84
D = d1+d2+d3+d4+d5+d6; // [mole]
// From mass balance 
Lmin = Vmin-D; // [mole]
// For minimum reflux ratio
Rmin = Lmin/D;
printf("The minimum reflux ratio is %f\n\n",Rmin);
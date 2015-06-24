clear;
clc;

// Illustration 9.2
// Page: 511

printf('Illustration 9.2 -  Page: 511\n\n');

// solution
//*****Data*****//
//  A-oxygen    B-nitrogen
t = 0.2*10^-6; // [m]
qA = 3.97*10^-13; // [mole/m.s.kPa]
qB = 0.76*10^-13; // [mole/m.s.kPa]
v = 1; // [Air flow rate at STP, cubic m/s]
Pp = 0.1*10^6; // [Pa]
R = 8.314 // [cubic m.Pa/mole.K]
T = 298; // [K]
Pf = 1*10^6; // [Pa]
//*****//
// Using equation 9.14
alphaA = qA/qB;
QA = qA/t; // [mole/square m.s.kPa]
// molar flow rate
nf = v*1000/(22.4); // [mole/s]
r = Pp/Pf; // [pressure ratio]
QB = qB/t; // [mole/square m.s.kPa]
alphaid = QA/QB;
xFa = 0.21;
xFb = 0.79;

// For Q = 0.1
Q1 = 0.1
    // Solution of simultaneous equation
function[f]=F(e)
    f(1) = e(1) - (e(3)*(1-e(2)))/((e(2)*(1-e(3))));
    f(2) = e(2) - (xFa - (e(3)*Q1))/(1-Q1);
    f(3) = e(1) - (alphaid*(e(2)*(e(1)-1)+1- (r*e(1))))/(e(2)*(e(1)-1)+1 - r);
    funcprot(0);
endfunction
// Initial guess
e = [4 0.13 0.4];
y = fsolve(e,F);
alpha1 = y(1);
Xa1 = y(2);
Ya1 = y(3);
Am1 = Ya1*Q1*nf/(QA*(Xa1*Pf-Ya1*Pp))*1000; // [square m]

// For Q = 0.2
Q2 = 0.2
    // Solution of simultaneous equation
function[f]=F(e)
    f(1) = e(1) - (e(3)*(1-e(2)))/((e(2)*(1-e(3))));
    f(2) = e(2) - (xFa - (e(3)*Q2))/(1-Q2);
    f(3) = e(1) - (alphaid*(e(2)*(e(1)-1)+1- (r*e(1))))/(e(2)*(e(1)-1)+1 - r);
    funcprot(0);
endfunction
// Initial guess
e = [4 0.13 0.4];
y = fsolve(e,F);
alpha2 = y(1);
Xa2 = y(2);
Ya2 = y(3);
Am2 = Ya2*Q2*nf/(QA*(Xa2*Pf-Ya2*Pp))*1000; // [square m]

// For Q = 0.9
Q9 = 0.9
    // Solution of simultaneous equation
function[f]=F(e)
    f(1) = e(1) - (e(3)*(1-e(2)))/((e(2)*(1-e(3))));
    f(2) = e(2) - (xFa - (e(3)*Q9))/(1-Q9);
    f(3) = e(1) - (alphaid*(e(2)*(e(1)-1)+1- (r*e(1))))/(e(2)*(e(1)-1)+1 - r);
    funcprot(0);
endfunction
// Initial guess
e = [4 0.13 0.4];
y = fsolve(e,F);
alpha9 = y(1);
Xa9 = y(2);
Ya9 = y(3);
Am9 = Ya2*Q9*nf/(QA*(Xa9*Pf-Ya9*Pp))*1000; // [square m]

// Similarly for Q =0.3......0.9, Xa, Ya, alpha and Am are calculated
// Therefore we obtained
// Solution = [Q,alpha,Xa,Ya]
Solution = zeros(9,4);
Solution = [0.1 4.112 0.181 0.475;0.2 4.062 0.156 0.428;0.3 4.018 0.135 0.385;0.4 3.98 0.118 0.348;0.5 3.949 0.105 0.315;0.6 3.922 0.093 0.288;0.7 3.9 0.084 0.264;0.8 3.881 0.077 0.243;0.9 3.864 0.07 0.226];
Am = [8037;17074;26963;37531;48618;60099;71876;83879;96056;];
disp(Solution);
disp(Am);

printf("The maximum oxygen content of the permeate (%f percent) occurs with the smallest cut (Q = 0.1).\n\n",Ya1*100);
printf("The maximum nitrogen content of the retentate (%f percent) occurs at the largest cut (Q = 0.9).\n\n",(1-Xa9)*100);

printf('The membrane area requirements are very large (e.g, Am = 60,100 square m for Q = 0.6) even though the volumetric flow rate of air is relatively small)');
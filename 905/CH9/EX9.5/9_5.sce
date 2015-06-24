clear;
clc;

// Illustration 9.5
// Page: 526

printf('Illustration 9.5 -  Page: 526\n\n');

// solution
// A-Na+    B-Cu+2
// Using the data from Table 9.1
KA = 1.98;
KB = 3.47;

Q = 2.4; // [eq/L of resin]
// Charge ratio is 'n'
n = 2;
C = 0.05; //[total concentration, eq/L]
// From equ 9.48
KAB = KB/KA;
// From equ 9.47
// ya*(1-xa)^2/(xa*(1-ya)^2) = KAB*Q/C = T
T = KAB*Q/C;
// Substituting values of xA in the range 0.1< xa <1.0, we generate the       // distribution curve
for i=1:19
    deff('[y] = f16(ya)','y = ya*(1-i*0.05)^2/(i*0.05*(1-ya)^2) - T');
    ya(i) = fsolve(0.99,f16);
    disp(ya(i));
end

xa = [0.05;0.1;0.15;0.2;0.25;0.3;0.35;0.4;0.45;0.5;0.55;0.6;0.65;0.7;0.75;0.8;0.85;0.9;0.95;];
A = [xa,ya];

scf(1);
plot(A(:,1),A(:,2));
xgrid();
xlabel("xa,Fraction of Cu+2 in Solution");
ylabel("ya,Fraction of CuR2 in resin");

printf('The curve is similar in shape to an adsorption isotherm of the very favorable type.\n\n');
clear;
clc;

// Example: 10.19
// Page: 413

printf("Example: 10.11 - Page: 436\n\n");

// Solution

//*****Data******//
// (1): acetone (2): carbon tetrachloride
T = 45;// [OC]
// Data = [P (torr), x1, y1]
Data = [315.32 0.0556 0.2165;339.70 0.0903 0.2910;397.77 0.2152 0.4495;422.46 0.2929 0.5137; 448.88 0.3970 0.5832;463.92 0.4769 0.6309;472.84 0.5300 0.6621;485.16 0.6047 0.7081;498.07 0.7128 0.7718;513.20 0.9636 0.9636];
//*************//

// From the standard data (Pg 531):
// For Acetone:
A1 = 14.2342;
B1 = 2691.46;
C1 = 230.00;
// For carbon tetrachloride:
A2 = 13.6816;
B2 = 2355.82;
C2 = 220.58;
P1sat = exp(A1 - B1/(T + C1));// [kPa]
P2sat = exp(A2 - B2/(T + C2));// [kPa]
P1sat = P1sat*760/101.325;// [torr]
P2sat = P2sat*760/101.325;// [torr]
P = Data(:,1);
x1 = Data(:,2);
y1 = Data(:,3);
x2 = 1 - x1;
y2 = 1 - y1;
gama1 = (y1.*P./x1)/P1sat;
gama2 = (y2.*P./x2)/P2sat;
Value = log(gama1./gama2);
scf(2);
plot(x1,Value);
xgrid();
xlabel("x1");
ylabel("ln(y1/y2)");
// Since the whole area is above X - axis:
printf("The data is not consistent thermodynamically\n");
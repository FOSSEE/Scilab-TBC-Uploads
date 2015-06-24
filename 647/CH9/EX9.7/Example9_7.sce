clear;
clc;

// Example: 9.7
// Page: 342

printf("Example: 9.7 - Page: 342\n\n");

// Solution

//*****Data******//
// Data = [X1 V*10^6(cubic m/mol)];
Data = [0 20;0.2 21.5;0.4 24.0;0.6 27.4;0.8 32.0;1 40];
//************//

scf(1.1);
plot(Data(:,1),Data(:,2));
title("Example 9.7");
xlabel("Mole fraction");
ylabel("Molar Volume*10^(6)");
xgrid();

// Solution (i)
printf("For X1 = 0.5\n");
// A tangent is drawn to the curve at X1 = 0.5.
// The intercept at X2 = 0 or X1 = 1, gives V1_bar.
V1_bar1 = 33.8*10^(-6);// [cubic m/mol]
// The intercept at X2 = 1 or X1 = 0, gives V2_bar.
V2_bar1 = 17*10^(-6);// [cubic m/mol]
printf("Partial molar volume of component 1 is %.2e cubic m/mol\n",V1_bar1);
printf("Partial molar volume of component 2 is %.2e cubic m/mol\n",V2_bar1);
printf("\n");

// Solution (ii)
printf("For X2 = 0.75\n");
// A tangent is drawn to the curve at X1 = 0.75.
// The intercept at X2 = 0 or X1 = 1, gives V1_bar.
V1_bar2 = 36.6*10^(-6);// [cubic m/mol]
// The intercept at X2 = 1 or X1 = 0, gives V2_bar.
V2_bar2 = 12.4*10^(-6);// [cubic m/mol]
point1 = [0 V1_bar1; 1 V2_bar1];
point2 = [0 V1_bar2;1 V2_bar2];
scf(2);
plot(point1(:,1),point1(:,2),point2(:,1),point2(:,2));
legend("X1 = 0.5","X1 = 0.75");
xlabel("Mole fraction");
ylabel("Molar Volume");
printf("Partial molar volume of component 1 is %.2e cubic m/mol\n",V1_bar);
printf("Partial molar volume of component 2 is %.2e cubic m/mol\n",V2_bar);
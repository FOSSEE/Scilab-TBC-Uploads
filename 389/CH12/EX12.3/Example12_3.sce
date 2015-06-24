clear;
clc;

// Illustration 12.3
// Page: 671

printf('Illustration 12.3 - Page: 671\n\n');

// Solution

// ***Data***//
SsByA = 40;
x1 = 0.25;// [moisture fraction]
x2 = 0.06;// [moisture fraction]
//***********//

X1 = x1/(1-x1);// [kg moisture/kg dry solid]
X2 = x2/(1-x2);// [kg moisture/kg dry solid]
// Fig. 12.10 (Pg 668) indicates that both constant and falling rate periods are involved.

// Constant Rate period:
// From Fig. 12.10 (Pg 668):
Xc = 0.200;// [kg moisture/kg dry solid]
Nc = 0.3*10^(-3);// [kg/square m.s]
// From Eqn. 12.4:
thetha1 = SsByA*(X1-Xc)/Nc;// [s]

// Falling Rate Period:
// From Fig. 12.10 (Pg 668):
// Data=[x N*10^3]
Data = [0.2 0.3;0.18 0.266;0.16 0.239;0.14 0.208;0.12 0.180;0.10 0.150;0.09 0.097;0.08 0.070;0.07 0.043;0.064 0.025];
Val = zeros(10);
// Val=[(1/N)*10^(-3)]
for i = 1:10
    Val(i) = 1/Data(i,2);
end
scf(40);
plot(Data(:,1),Val);
xgrid();
xlabel("x [kg moisture / kg dry solid]");
ylabel("10^(-3) / N");
title("Graphical Integration Falling Rate Period");
// Area under the curve:
Area = 1060;
// From Eqn. 12.3:
thetha2 = SsByA*Area;// [s]
thetha = thetha1+thetha2;// [s]
printf("Total Drying Time: %f h\n",thetha/3600);
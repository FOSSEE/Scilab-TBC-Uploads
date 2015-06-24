clear;
clc;

// Illustration 10.9
// Page: 551

printf('Illustration 10.9 - Page: 551\n\n');

// solution

//****Data****//
B = 20000;// [kg/h]
//******//

// x and y are taken in weight fraction acetic acid.
x1 = 0.30;// [Wt fraction]
xF = 0.30;// [Wt fraction]
y2 = 0;// [Wt fraction]
x2 = 0.02;// [Wt fraction]
y1 = 0.10;// [Wt fraction]
// The operating diagram is plotted in Fig. 10.23:
// Data = [x x_star]
// From Fig. 10.23 (Pg 503):
Data = [0.30 0.230;0.25 0.192;0.20 0.154;0.15 0.114;0.10 0.075;0.05 0.030;0.02 0];
Val = zeros(7);
for i = 1:7
    Val(i) = 1/(Data(i,1)-Data(i,2));
end
scf(29);
plot(Data(:,1),Val);
xgrid();
a = gca();
a.Data_bounds = [0.02 0;0.30 50];
xlabel("x");
ylabel("1/(x-x*)");
title("Graphical Integration");
// From Area Under the curve:
Area = 8.40;
// The mutual solubility of water and isopropyl ether is very small.
Ma = 18;// [kg/kmol water]
Mb = 60;// [kg/kmol isopropyl ether]
r = Ma/Mb;
// From Eqn. 10.110:
NtoR = Area+(1/2)*log(1-x2/(1-x1))+(1/2)*log(x2*(r-1)+1/(x1*(r-1)+1));
// Since the operating line and equilibrium line are parallel:
Np = NtoR;
printf("Number of theoretical Units: %f\n",NtoR);
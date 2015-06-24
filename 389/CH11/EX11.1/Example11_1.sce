clear;
clc;

// Illustration 11.1
// Page: 575

printf('Illustration 11.1 - Page: 575\n\n');

// Solution

//*****Data*****//
Temp = 30;// [OC]
//*************//

// From Fig. 11.5 (Pg 572)
// The isosteres for various concentrations are straight and their slopes are measured with the help of milimeter rule.
// Data = [X(kg acetone/kg carbon) lambda(slope of isostere)]
Data = [0.05 1.170;0.10 1.245;0.15 1.3;0.20 1.310;0.25 1.340;0.30 1.327];// [kg acetone/kg carbon]
lambdar = 551;// [reference at 30 OC,kJ/kg]
Val = zeros(6,5);
for i = 1:6
    Val(i,1) = Data(i,1);// [kg acetone/kg carbon]
    Val(i,2) = Data(i,2);// [slope of isostere]
    Val(i,3) = -Data(i,2)*lambdar;// [kJ/kg acetone]
end
scf(30);
plot(Val(:,1),Val(:,3));
xgrid();
xlabel("X (kg carbon / kg acetone)");
ylabel("Differential heat of adsorption (kJ / kg acetone)");
title("Graphical Integration");
// Area: The area under the curve between X = 0 to X = X
// Corresponding to Data(:,1):
Area = [-29.8 -63.0 -97.9 -134.0 -170.5 -207.5];
for i = 1:6
    Val(i,4) = Area(i);
    Val(i,5) = Area(i)+(lambdar*Val(i,1));
end
printf("X(kg acetone/kg carbon) Slope of isostere    Differential heat of adsorption(kJ/kg acetone)  deltaH_prime(vapour(kJ/kg carbon))  deltaH(liquid(kJ/kg carbon))\n");
for i = 1:6
    printf("%f \t \t \t %f \t \t %f \t \t \t \t \t %f \t \t \t %f\n",Val(i,1),Val(i,2),Val(i,3),Val(i,4),Val(i,5));
end
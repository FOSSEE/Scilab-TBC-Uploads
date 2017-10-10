//Solution 8-09
WD=get_absolute_file_path('8_09_solution.sce');
datafile=WD+filesep()+'8_09_example.sci';
clc;
exec(datafile)
//unit conversions
D = D / 100 //from [cm] to [m]
P_1 = P_1 * 10**3 //from [kPa] to [Pa]
//(a)
sumK_L = K_Ltee + 2 * K_Lelbow + K_Lglobe + K_Lshower;
h_L = P_1 / (rho * g) - z;
nu = mu / rho; //kinematic viscosity definition
//function for solving non linear equations
function [Z] = equations1(X)
    Vdot = X(1);
    f = X(2);
    V = X(3);
    Re = X(4);
    Z(1) = f * L/D * V**2 / (2 * g) + sumK_L * V**2 / (2 * g) - h_L;
    Z(2) = Vdot * 4 / (%pi * D**2) - V;
    Z(3) = V * D / (nu) - Re;
    Z(4) = 2.0 * log10(epsilon/D / 3.7 + 2.51 / (Re * sqrt(f))) + 1/sqrt(f);
endfunction
[X, v, info] = fsolve([1e-4;0.02;1;1e5], equations1);
Vdot = X(1); f = X(2); V = X(3); Re = X(4);
printf("Flow rate of water through shower is %1.2f L/s", Vdot * 1000);
//(b)
h_L3 = P_1 / (rho * g) - 1; //from energy equation between toilet flush and inlet
K_L3 = K_Ltee + K_Lelbow_toilet + K_Lvalve_toilet + K_Lfloat;
//function for solving 12 equations simultaneously
function [Z] = equations2(X)
    f1 = X(1);
    f2 = X(2);
    f3 = X(3);
    V1 = X(4);
    V2 = X(5);
    V3 = X(6);
    Vdot1 = X(7);
    Vdot2 = X(8);
    Vdot3 = X(9);
    Re1 = X(10);
    Re2 = X(11);
    Re3 = X(12);
    Z(1) = f1 * 5 / D * V1**2 /(2 * g) + (f2 * 6 / D + sumK_L)* V2**2 /(2 * g) - h_L;
    Z(2) = f1 * 5 / D * V1**2 / (2 * g) + (f3 * 1/ D + K_L3) * V3**2 / (2 * g) - h_L3;
    Z(3) = Vdot1 * 4/(%pi * D**2) - V1;
    Z(4) = Vdot2 * 4/(%pi * D**2) - V2;
    Z(5) = Vdot3 * 4/(%pi * D**2) - V3;
    Z(6) = V1 * D / nu - Re1;
    Z(7) = V2 * D / nu - Re2;
    Z(8) = V3 * D / nu - Re3;
    Z(9) = 1/ sqrt(f1) + 2.0 * log10(epsilon/D/3.7 + 2.51 / (Re1 * sqrt(f1)));
    Z(10) = 1/ sqrt(f2) + 2.0 * log10(epsilon/D/3.7 + 2.51 / (Re2 * sqrt(f2)));
    Z(11) = 1/ sqrt(f3) + 2.0 * log10(epsilon/D/3.7 + 2.51 / (Re3 * sqrt(f3)));
    Z(12) = Vdot2 + Vdot3 - Vdot1; 
endfunction
[X,v, info] = fsolve([0.02,0.02,0.02,1,1,1,1e-4,1e-4,1e-4,1e5,1e5,1e5], equations2);
Vdot1 = X(7);
Vdot2 = X(8);
Vdot3 = X(9);
printf("\nFlushing of toilet reduces flow rate of cold water through shower from %1.2f L/s to %1.2f L/s", Vdot * 10**3, Vdot2 * 10**3);
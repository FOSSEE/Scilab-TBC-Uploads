//Solution 8-07
WD=get_absolute_file_path('8_07_solution.sce');
datafile=WD+filesep()+'8_07_example.sci';
clc;
exec(datafile)
function [Z] = equations(X)
    Vdot = X(1);
    Vdot_1 = X(2);
    Vdot_2 = X(3);
    V_1 = X(4);
    V_2 = X(5);
    h_L = X(6);
    h_L1 = X(7);
    h_L2 = X(8);
    h_pump = X(9);
    Re_1 = X(10);
    Re_2 = X(11);
    f_1 = X(12);
    f_2 = X(13);
    Z(1) = Wdot_elect - rho * Vdot * g * h_pump / (eta / 100);
    Z(2) = h_pump - (z_B - z_A) - h_L;
    Z(3) = h_L - h_L1;
    Z(4) = h_L1 - h_L2;
    Z(5) = V_1 - Vdot_1 / (%pi / 4 * D_1**2);
    Z(6) = V_2 - Vdot_2 / (%pi / 4 * D_2**2);
    Z(7) = Re_1 - rho * V_1 * D_1 / mu;
    Z(8) = Re_2 - rho * V_2 * D_2 / mu;
    Z(9) = 1 / sqrt(f_1) + 2.0 * log10(epsilon / D_1 / 3.7 + 2.51 / Re_1 / sqrt(f_1));
    Z(10) = 1 / sqrt(f_2) + 2.0 * log10(epsilon / D_2 / 3.7 + 2.51 / Re_2 / sqrt(f_2));
    Z(11) = h_L1 - f_1 * L_1 * V_1**2 / (2 * g * D_1);
    Z(12) = h_L2 - f_2 * L_2 * V_2**2 / (2 * g * D_2);
    Z(13) = Vdot - (Vdot_1 + Vdot_2);
endfunction
//unit conversions
D_1 = D_1 / 100; //[cm] to [m]
D_2 = D_2 / 100; //[cm] to [m]
[X, v, info] = fsolve([1e-2;1e-2;1e-2;1;1;10;10;10;20;1e5;1e5;0.02;0.02], equations);
Vdot = X(1);
Vdot_1 = X(2);
Vdot_2 = X(3);
printf("Flow rate between the reservoirs is %1.4f m^3/s", Vdot);
printf("\nFlow rate in pipe 1 is %1.5f m^3/s", Vdot_1);
printf("\nFlow rate in pipe 2 is %1.4f m^3/s", Vdot_2);
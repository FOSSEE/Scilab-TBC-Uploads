//Solution 8-05
WD=get_absolute_file_path('8_05_solution.sce');
datafile=WD+filesep()+'8_05_example.sci';
clc;
exec(datafile)
//simultaneous equations method
function [Z] = equation(X)
    V = X(1);
    Re = X(2);
    f = X(3);
    Vdot = X(4);
    Z(1) = V - Vdot / (%pi / 4 * D**2);
    Z(2) = Re - V * D / nu;
    Z(3) = 1 / sqrt(f) + 2.0 * log10(epsilon / D /3.7 + 2.51 / Re / sqrt(f));
    Z(4) = h_L - f * L * V**2 / (2 * g * D);
endfunction
epsilon = 0.0;
funcprot(0);
[X, v, info] = fsolve([1;1e5;0.02;0.1], equation);
Vdot = X(4);
Vdot_drop = Vdot_old - Vdot
printf("Drop in flow rate through duct is %1.2f m^3/s",Vdot_drop);
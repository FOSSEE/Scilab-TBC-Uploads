//Solution 8-04
WD=get_absolute_file_path('8_04_solution.sce');
datafile=WD+filesep()+'8_04_example.sci';
clc;
exec(datafile)
//simultaneous equations method
function [Z] = equation(X)
    V = X(1);
    Re = X(2);
    f = X(3);
    D = X(4);
    Z(1) = V - Vdot / (%pi / 4 * D**2);
    Z(2) = Re - V * D / nu;
    Z(3) = 1 / sqrt(f) + 2.0 * log10(epsilon / D /3.7 + 2.51 / Re / sqrt(f));
    Z(4) = h_L - f * L * V**2 / (2 * g * D);
endfunction
epsilon = 0.0;
[X, v, info] = fsolve([1;1e5;0.02;0.1], equation);
D = X(4);
f = X(3);
V = X(1);
Re = X(2);
printf("Diameter of the duct should not exceed %1.3f m", D);
//Swamee-Jain formula
epsilon =0.0
D = 0.66* ( epsilon^1.25 * (L * Vdot**2 / g / h_L)**4.75 + nu * Vdot**9.4 * (L / g / h_L)**5.2)**0.04
printf("\nBy Swamee-Jain method\nDiameter of the pipe should be %1.3f m", D) 
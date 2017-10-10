//Solution 8-03
WD=get_absolute_file_path('8_03_solution.sce');
datafile=WD+filesep()+'8_03_example.sci';
clc;
exec(datafile)
function [f] = colebrook(epsilon, D, Re)
    f = 1;
    //Haaland equation
    fnew = (-1.8 * log10(6.9/Re + (epsilon/D/3.7)**1.11))**(-2); 
    err = 0.0001; //maximum allowable error
    //using fixed point iteration
    while abs(fnew - f) > err
        f = fnew;
        fnew = (-2.0 * log10(epsilon/ D/3.7 + 2.51 / Re/sqrt(f)))**(-2);
    end
    f = fnew;
    return f;
endfunction
//unit conversions
D = D / 100; //[cm] to [m]
A_c = %pi / 4 * D**2; //cross sectional area of pipe
V = Vdot / A_c; //average velocity in pipe
Re = rho * V * D / mu; //Reynold's number
if Re > 4000 then
    epsilon = 0.002; //roughness for steel pipe [mm]
end
epsilon = epsilon / 1000; //unit conversion from [mm] to [m]
f = colebrook(epsilon, D, Re);
deltaP = f * L * rho * V**2 / (2 * D);
h_L = deltaP / rho / g;
Wdot_pump = Vdot * deltaP;
printf("Pressure drop in pipe is %1.2f kPa", deltaP / 1000);
printf("\nHead loss in pipe is %1.2f m", h_L);
printf("\nPumping power required is %1.0f W", Wdot_pump);
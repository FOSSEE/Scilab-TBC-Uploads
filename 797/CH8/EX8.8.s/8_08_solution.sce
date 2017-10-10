//Solution 8-08
WD=get_absolute_file_path('8_08_solution.sce');
datafile=WD+filesep()+'8_08_example.sci';
clc;
exec(datafile)
//function to evaluate friction factor using Colebrook's equation
function [f] = colebrook(epsilon, D, Re)
    f = 1;
    fnew = (-1.8 * log10(6.9/Re + (epsilon/D/3.7)**1.11))**(-2); //Haaland equation
    err = 0.0001; //maximum allowable error
    //using fixed point iteration
    while abs(fnew - f) > err
        f = fnew;
        fnew = (-2.0 * log10(epsilon/ D/3.7 + 2.51 / Re/sqrt(f)))**(-2);
    end
    return f;
endfunction
//unit conversion
D = D / 100; //from [cm] to [m]
Vdot = Vdot * 10**-3; //from [L/s] to [m^3/s]
A_c = %pi / 4 * D**2; //
V = Vdot / A_c;
Re = rho * V * D / mu; //Reynold's number
if Re < 4000 then
    printf("As Re < 4000 flow is turbulent");
end
funcprot(0);
f = colebrook(epsilon, D, Re); //friction factor
sumK_L = K_Lentrance + 2 * K_Lelbow + K_Lvalve + K_Lexit;
h_minor = sumK_L * V**2 / (2 * g);
h_major = f* L/D * V**2 / (2 * g);
h_L = h_minor + h_major;
z1 = z2 + h_L;    //from energy equation between 1 and 2
printf("Free surface of first reservoir must be %1.2f m above the ground level to ensure water flow between two reservoirs at 6 L/s", z1);
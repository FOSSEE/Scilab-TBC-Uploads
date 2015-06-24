clc
//Initialization of variables
g=9.81 //m/s^2
rho=10^3 //kg/m^3
Cd=0.6
d=0.04 //m
h2=2.5 //m
//calculations
function y=fun(h)
    y=1/(Cd*%pi/4 *d^2 *sqrt(2*g)) *(4/sqrt(h) + sqrt(64-h^2))
endfunction
t=intg(0,h2,fun)
tmin=31.1
//results
printf("Time required = %.1f min",tmin)

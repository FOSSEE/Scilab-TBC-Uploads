clc
//Initialization of variables
dia=1 //m
h=3 //m
rho=1000 //kg/m^3
N=80 //rpm
g=9.81 //m/s^2
//calculation
w=2*%pi*N/60
function y = fun(r)
    y=0.5*rho*w^2 *r^3 *2*%pi
endfunction
vec=intg(0,dia/2,fun)
Pt=vec(1) + %pi/4 *dia^2 *(h-dia)*rho*g
//results
printf("Total pressure on base = %.2f kN",Pt/1000)

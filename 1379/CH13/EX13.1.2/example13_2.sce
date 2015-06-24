

//exapple 13.2 
clc; funcprot(0);
// Initialization of Variable
sigma=55*10^6;//maximum stress
d=35.2/100;
rhos=8890;//density of bronze
rho=1105;//density of solution
t=80/1000;//thickness
tau=4.325/1000;
pi=3.1428;
//calculation
//part1
ri=d/2-t;//radius internal
function [y ]= fround(x,n)
// fround(x,n)
// Round the floating point numbers x to n decimal places
// x may be a vector or matrix// n is the integer number of places to round to
y=round(x*10^n)/10^n;
endfunction
omega=sqrt((sigma*tau*2/d)/(.5*rho*(d^2/4-ri^2)+rhos*tau*d/2));
N=60*omega/2/pi;
disp(N,"The maximum safe speed allowed in rpm:");
//part2
P=.5*rho*(d^2/4-ri^2)*omega^2;
P=fround(P/10^4,1)*10^4;
//disp(P,"the power in N/m^2:");
printf('the power in N/m^2: %3.2e\n', P);
a=rho*omega^2*d/2;
a=fround(a/10^6,1)*10^6;
//disp(a,"pressure gradient in radial direction in N/m^3:")
printf('pressure gradient in radial direction in N/m^3: %3.2e\n', a);

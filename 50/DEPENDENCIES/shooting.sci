function [U] = shooting(ub,up,x,f)

//Shooting method for a second order
//boundary value problem
//ub = [u0 u1] -> boundary conditions
//x = a vector showing the range of x
//f = function defining ODE, i.e.,
//    du/dx = f(x,u), u = [u(1);u(2)].
//up = vector with range of du/dx at x=x0
//xuTable = table for interpolating derivatives
//uderiv  = derivative boundary condition

n  = length(up);
m  = length(x);
y1 = zeros(up);

for j = 1:n
	u0    = [ub(1);up(j)];
	uu    = ode(u0,x(1),x,f);
	u1(j) = uu(1,m);
end;

xuTable = [u1';up];
uderiv  = interpln(xuTable,ub(2));
u0      = [ub(1);uderiv];
u       = ode(u0,x(1),x,f);
U=u';

endfunction



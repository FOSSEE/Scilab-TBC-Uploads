//All the quantities are in SI units
v_inf = 240; //freestream velocity
l = 1;       //wavelength of the wall
h = 0.01;    //amplitude of the wall
M_inf = 0.7; //freestream mach number
b = sqrt(1-(M_inf^2));
x = l/4;
y = l;

function temp = u(x,y)
temp = v_inf*(1 + (h/b*2*%pi/l*cos(2*%pi*x/l)*exp(-2*%pi*b*y/l)));
endfunction

function temp = v(x,y)
temp = -v_inf*h*2*%pi/l*sin(2*%pi*x/l)*exp(-2*%pi*b*y/l);
endfunction

d = 1e-10;

du = derivative(u,x,d);

dv = derivative(v,y,d);

grad_V = du + dv;

test = (b-(1/b))*v_inf*h*((2*%pi/l)^2)*exp(-2*%pi*b);

printf("\nRESULT\n-------\nThe time rate of change of the volume of the fluid element per unit volume is: %1.4f s-1\n", grad_V)
clc; funcprot(0); //Example 17.4 

//Initializing the variables
gma = 1.4;
Q = 28/60; // m3/s
d = 0.1;
p1 = 200*10^3;
f = 0.004;
x_x1 = 60;
R = 287;
T = 15+273;

//Calculations
A = %pi*d^2/4;
m = d/4;
v1 = Q/A;
pa = p1*sqrt(1-f*(x_x1)*v1^2/(m*R*T));

function[y] =g(p)
    A = (v1*p1)^2/(R*T)
    B = f*A*x_x1/(2*m);
    y = (p^2 - p1^2)/2 -A*log(p/p1) +B;
endfunction
pb=fsolve(pa,g);// Guessing solution around pa
disp(pb/1000,"Pressure at the outlet, allowing for velocity changes (kN) :",pa/1000,"Pressure at the outlet, neglecting velocity changes (kN)");
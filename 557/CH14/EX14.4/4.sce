clc; funcprot(0); //Example 14.4

//Initializing the variables
Za_Zb = 16;
Za_Zc = 24;
f = 0.01;
l1 = 120;
l2 = 60;
l3 = 40;
d1 = 0.12;
d2 = 0.075;
d3 = 0.060;
g = 9.81;
//Calculations

A = [%pi*d1^2/4 %pi*d2^2/4 %pi*d3^2/4]
function[z] = Coeff(l,d)
    z = 4*f*l/(d*2*g);
endfunction

function[f] = F(x)
    f(1) = Coeff(l1,d1)*x(1)^2 + Coeff(l2,d2)*x(2)^2  - Za_Zb;
    f(2) = Coeff(l1,d1)*x(1)^2 + Coeff(l3,d3)*x(3)^2  - Za_Zc;;
    f(3) = x(1)*d1^2 - x(2)*d2^2 - x(3)*d3^2; // Q1=Q2
endfunction

function[j] = jacob(x)
    j(1,1) = 2*Coeff(l1,d1)*x(1); j(1,2) = 2*Coeff(l2,d2)*x(2);j(1,3) = 0;
    j(2,1) = 2*Coeff(l1,d1)*x(1); j(2,2) = 0;j(2,3) = 2*Coeff(l3,d3)*x(3);
    j(3,1) = d1^2; j(3,2) = -d2^2;j(3,3) = -d3^2;
endfunction

x = [1.8 0 0];
v = fsolve(x,F,jacob, 10^-20);
disp(v(3)*A(3),"Flow rate in pipe 3 (m3/s):",v(2)*A(2),"Flow rate in pipe 2 (m3/s):",v(1)*A(1),"Flow rate in pipe 1 (m3/s) :");
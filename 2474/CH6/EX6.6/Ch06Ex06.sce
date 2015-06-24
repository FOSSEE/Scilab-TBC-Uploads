// Scilab code Ex6.6: Pg.255 (2008)
clc; clear;
h = 6.626e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of the electron, kg
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
V_0 = 2*1.6e-019;    // Height of potential step, J
E = 0.1*V_0;    // Energy of incident electron, J
C = 2*sqrt(E)/(sqrt(E)+sqrt(E-V_0));    // Wave equation constant
alpha = sqrt(2*m*(V_0-E))/h_cross;
psi_square = zeros(100);    
i = 1;    // Index for array
for index = 0:0.1e-010:10e-010
    x(i) = index
    psi_square(i) = abs(C)^2*exp(-2*alpha*x(i));
    i = i + 1;
end
clf()
plot2d(x, psi_square);    // Plot psi_square vs x
title('Plot of |psi_square| vs x', 'fontsize', 4);
xlabel('x', 'fontsize', 3);
ylabel('|psi_square|', 'fontsize', 3);
// The attached graph shows the phenomenon
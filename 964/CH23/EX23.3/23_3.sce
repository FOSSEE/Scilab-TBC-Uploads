//clc()
//q(z = 0) = -k*p*C*(dT/dz)/(z = 0)
k = 3.5 * 10^ - 7;//m^2/s
p = 1800;//kg/m^3
C = 840; //(J/(kg.C))
x = 0;
fx0 = 13.5;
fx1 = 12;
fx2 = 10;
x0 = 0;
x1 = 1.25;
x2 = 3.75;
dfx = fx0 *(2*x - x1 - x2)/((x0 - x1)*(x0 - x2)) + fx1 *(2*x - x0 - x2)/((x1 - x0)*(x1 - x2)) + fx2 *(2*x - x1 - x0)/((x2 - x1)*(x2 - x0));
disp("C/cm",dfx,"(dT/dz) = ")
q = - k * p *C * dfx*100;
disp("W/m^2",q,"q(z = 0) =")

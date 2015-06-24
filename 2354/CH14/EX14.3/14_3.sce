//example 14.3
clc; funcprot(0);
// Initialization of Variable
rho=1.67;
V=9.31;//velocity
D=4;
mu=8.0e-5;
g=32.2;
l=799;
Q=117;
f=0.0125;//friction factor
Re=rho*V*D/mu;
disp(Re,"reynolds no");
hp=f*l/D*V^2/2/g*5280;
disp(hp,"pump head in ft of H20");
hp=round(hp/100)*100
W=rho*g*Q*hp/550;
disp(W,"power required in hp");
clear()

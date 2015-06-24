clc; funcprot(0); //Example 10.1

//Initializing the variables
mu = 0.9;
rho = 1260;
g = 9.81;
x = 45; //theta in degrees
P1 = 250 * 10^3;
P2 = 80* 10^3;
Z1 = 1;
Z2 = 0; // datum
U = -1.5;
Y = 0.01;

//Calculations
gradP1 = P1+ rho*g*Z1;
gradP2 = P2+ rho*g*Z2;
DPstar = (gradP1-gradP2 )*sind(x)/(Z1-Z2);
A = U/Y; // Coefficient U/Y for equation 10.6
B = DPstar/(2*mu);// Coefficient dp*/dx X(1/2mu) for equation 10.6
y = poly(0,'y');
v = (A + B*Y)*y -B*y^2;
duBYdy = derivat(v);
tau = 0.9*duBYdy;
ymax = roots(duBYdy);        //value of y where derivative vanishes.;
umax = (A + B*Y)*ymax + B*ymax^2; // Check the value there is slight mistake in books answer
function[z] = u(y)
    z = (A + B*Y)*y -B*y^2;
endfunction
tauMax =abs( mu*derivative(u,Y)); 
ymax
disp(tauMax/1000,"Maximum Shear Stress (kN/m2):",umax, "Maximum Flow Velocity (m/s)",tau, "Shear Distribution :", v,"Velocity Distribution :"  )
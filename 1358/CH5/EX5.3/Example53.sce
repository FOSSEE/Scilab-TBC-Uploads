// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 3")
disp("Rotor speed is given by:")
D = 0.95;//m
N = 5000;//rpm
U = %pi*D*N/60
disp("Blade speed at the hub:")
Dh = 0.85;
Uh = %pi*Dh*N/60
disp("From the inlet velocity triangle (Figure)")
disp("tanalpha1 = Cw1/Ca and tanbeta1 = (U - Cw1)/Ca")
disp("Adding the above two equations:")
disp("U/Ca = tanalpha1 + tanbeta1")
alpha1 = 28;
beta1 = 56;
Ca = U/(tan(alpha1*%pi/180) + tan(beta1*%pi/180))
disp("Therefore, Ca = 123.47 m/s (constant at all radii)")
disp("The mass flow rate: in kg/s")
disp("m = pi*(rt^2 - rh^2)rho*Ca")
rt = 0.475;
rh = 0.425;
rho = 1.2;
m = %pi*rho*Ca*(rt^2 -rh^2)
disp("The power required per unit kg for compression is:")
disp("Wc = lambda*U*Ca*(tan(beta1) - tan(beta2)) in kJ/kg")
lambda = 1;
beta2 = alpha1;
Wc = lambda*U*Ca*(tan(beta1*%pi/180) - tan(beta2*%pi/180)) /1000
disp("The total power required to drive the compressor is: in kW")
P = m*Wc
disp("At the inlet to the rotor tip:")
Cw1t = Ca*tan(alpha1*%pi/180)//m/s
disp("Using free vortex condition, i.e., Cwr = constant, and using h as the subscript for the hub,")
Cw1h = Cw1t*rt/rh//m/s
disp("At the outlet to the rotor tip,")
alpha2 = beta1;
Cw2t = Ca *tan(alpha2*%pi/180)
Cw2h = Cw2t*rt/rh
disp("Hence the flow angles at the hub:")
alpha1a = atan(Cw1h/Ca)*180/%pi 
beta1a = atan((Uh/Ca) - tan(alpha1a*%pi/180))*180/%pi
alpha2a = atan(Cw2h/Ca)*180/%pi
beta2a = atan((Uh/Ca)  - tan(alpha2a*%pi/180)) *180/%pi
disp("The degree of reaction at the hub is given by:")
A = Ca*(tan(beta1a*%pi/180)+tan(beta2a*%pi/180))/(2*Uh) * 100

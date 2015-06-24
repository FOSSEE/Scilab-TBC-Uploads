// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 5, Example 6")
disp("Since the degree of reaction is 50%, the velocity triangle is symmetric as shown in Figure Ex56")
disp("Using the degree of reaction equation")
disp("DOF = Ca(tanbeta1 + tanbeta2)/2U")
disp("phi = Ca/U")
disp("Now, for the relative Mach number at the inlet:")
DOF = 0.5;
phi = 0.56;
beta1 = atan(2*DOF/phi - tan(32*%pi/180))*180/%pi
disp("Mr1 = V1/(gamma*RT1)^0.5")
disp("V1^2 = gamma*R*Mr1^2*(T01 - C1^2/2Cp)")
disp("From the velocity triangle,")
disp("V1 = Ca/cosbeta1; and C1 = Ca/cosalpha1")
disp("alpha1 = beta2(since DOF = 0.5)")
disp("C1 = Ca/cos32 = Ca/0.848")
disp("V1 = Ca/cos 49.24 = Ca/0.653")
disp("Hence: C1^2/ = Ca^2/0.719; and V1^2 = Ca^2/0.426")
disp("Substituting for V1 and C1,")
Ca = ((104.41*295*1445)/(1445+104.41))^0.5
disp("The stagnation temperature rise may be calculated as: Rise in Kelvin = T02-T01")
Cp = 1005;
Rise = Ca^2*(tan(beta1*%pi/180)- tan(32*%pi/180))/(Cp*phi)

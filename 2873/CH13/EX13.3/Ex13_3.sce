// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 13 Example 3")
C=300;//aircraft flying speed in m/s
P=0.472*10^5;//altitude pressure in Pa
rho=0.659;//density in kg/m^3
y=1.4;//expansion constant
R=287;//gas constant in J/kg K
disp("From bernoulli equation,Po-P=(1/2)*rho*C^2")
disp("so Po=P+(1/2)*rho*C^2 in N/m^2")
Po=P+(1/2)*rho*C^2
disp("speed indicator reading shall be given by mach no.s")
disp("mach no.,M=C/a=C/sqrt(y*R*T)")
disp("using perfect gas equation,P=rho*R*T")
disp("so T=P/(rho*R)in K")
T=P/(rho*R)
disp("so mach no.,M")
M=C/sqrt(y*R*T)
M=0.947;//approx.
disp("considering compressibility effect,Po/P=(1+(y-1)*M^2/2)^(y/(y-1))")
disp("so stagnation pressure,Po=P*((1+(y-1)*M^2/2)^(y/(y-1)))in N/m^2")
Po=P*((1+(y-1)*M^2/2)^(y/(y-1)))
disp("also Po-P=(1+k)*(1/2)*rho*C^2")
disp("substitution yields,k=")
k=((Po-P)/((1/2)*rho*C^2))-1
disp("so compressibility correction factor,k=0.2437")

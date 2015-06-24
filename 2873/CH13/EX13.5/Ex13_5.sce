// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 13 Example 5")
To=305;//stagnation temperature of air stream in K
y=1.4;//expansion constant
R=287;//gas constant in J/kg K
disp("actual static pressure(P)=1+0.3 in bar")
P=1+0.3
disp("It is also given that,Po-P=0.6,")
disp("so Po=P+0.6 in bar")
Po=P+0.6
disp("air velocity,ao=sqrt(y*R*To)in m/s")
ao=sqrt(y*R*To)
disp("density of air,rho_o=Po/(R*To)in ")
rho_o=Po*10^5/(R*To)
disp("considering air to be in-compressible,")
disp("Po=P+rho_o*C^2/2")
disp("so C=sqrt((Po-P)*2/rho_o)in m/s")
C=sqrt((Po-P)*10^5*2/rho_o)
disp("for compressible fluid,Po/P=(1+(y-1)*M^2/2)^(y/(y-1))")
disp("so M=sqrt((exp(log(Po/P)/(y/(y-1)))-1)/((y-1)/2))")
M=sqrt((exp(log(Po/P)/(y/(y-1)))-1)/((y-1)/2))
M=0.7567;//approx.
disp("compressibility correction factor,k")
disp("k=(M^2/4)+((2-y)/24)*M^4")
k=(M^2/4)+((2-y)/24)*M^4
disp("stagnation temperature,To/T=1+((y-1)/2)*M^2")
disp("so T=To/(1+((y-1)/2)*M^2) in K")
T=To/(1+((y-1)/2)*M^2)
disp("density,rho=P/(R*T) in kg/m^3")
rho=P*10^5/(R*T)
disp("substituting Po-P=(1/2)*rho*C^2(1+k)")
disp("C=sqrt((Po-P)/((1/2)*rho*(1+k)))in m/s")
C=sqrt((Po-P)*10^5/((1/2)*rho*(1+k)))
disp("so C=250.95 m/s")

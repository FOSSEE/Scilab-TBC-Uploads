// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 13 Example 1")
To=(27+273);//stagnation temperature in K
P=0.4*10^5;//static pressure in pa
m=3000/3600;//air flowing rate in kg/s
d=80*10^-3;//diameter of duct in m
R=287;//gas constant in J/kg K
y=1.4;//expansion constant
disp("mass flow rate(m)=rho*A*C")
disp("so rho*C=4*m/(%pi*d^2)")
4*m/(%pi*d^2)
disp("so rho=165.79/C")
disp("now using perfect gas equation,p=rho*R*T")
disp("T=P/(rho*R)=P/((165.79/C)*R)")
disp("C/T=165.79*R/P")
165.79*R/P
disp("so C=1.19*T")
disp("we know,C^2=((2*y*R)/(y-1))*(To-T)")
disp("C^2=(2*1.4*287)*(300-T)/(1.4-1)")
disp("C^2=602.7*10^3-2009*T")
disp("C^2+1688.23*C-602.7*10^3=0")
disp("solving we get,C=302.72 m/s and T=254.39 K")
C=302.72;
T=254.39;
disp("using stagnation property relation,")
disp("To/T=1+(y-1)*M^2/2")
disp("so M=sqrt(((To/T)-1)/((y-1)/2))")
M=sqrt(((To/T)-1)/((y-1)/2))
M=0.947;//approx.
disp("stagnation pressure,Po=P*(1+(y-1)*M^2/2)in bar")
Po=P*(1+(y-1)*M^2/2)/10^5
disp("so mach number=0.947,stagnation pressure=0.472 bar,velocity=302.72 m/s")


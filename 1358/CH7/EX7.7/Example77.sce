// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 7")
Cpg = 1147;
disp("Temperature Drop = T01 -T03")
Drop = 145;
U = 345;
psi = Cpg*(Drop)/U^2
disp("Using velocity diagram")
disp("U/Ca = tan(beta3) - tan(alpha3)")
disp("tan(beta3) = 1/phi + tan(alpha3)")
alpha3 = 12;
phi = 0.75;
beta3 = atan(1/phi + tan(alpha3*%pi/180))*180/%pi
disp("Psi = phi*(tan(beta2) +tan(beta3))")
disp("DOR = phi/2 *(tan(beta3) - tan(beta2))")
disp("tan(beta3) = (psi + 2*DOR)/(2*phi)")
DOR = (tan(beta3*%pi/180) *2*phi - psi)/2 *100
disp("tan(beta2) = (psi-2*DOR)/(2*phi)")
beta2 = atan((psi-2*DOR/100)/(2*phi))*180/%pi
alpha2 = atan(tan(beta2*%pi/180)+(1/phi))*180/%pi
Ca1 = U*phi//m/s
C2 = Ca1/cos(alpha2*%pi/180)//m/s
disp("R2 = T02-T2 = C2^2 /2Cp")
R2 = C2^2 /(2*Cpg)
disp("R3 = T2-T2s = Tn*C2^2/(2Cpg)")
Tn = 0.05;
R3 = Tn*C2^2 /(2*Cpg)
T2 = 1100-R2//K
T2s = T2 - R3//K
P01 = 4;//bars
T01 = 1100;
P2 = P01*(T2s/T01)^4
R = 0.287;
rho2 = P2*100/(R*T2)//kg/m3
disp("Nozzle Throat area in A in m2")
C1 = C2;//m/s
rho1 = 0.907;//kg/m3
m = 24;
A = m/(rho1*C1)
A1 = m/(rho1*Ca1)

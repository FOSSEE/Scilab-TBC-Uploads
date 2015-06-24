// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 13")
disp("Let: rh = hub radius")
disp("     rt = tip radius")
disp("The flow area of the impeller inlet annulus is:")
rh = 0.0625;
rt = 0.125;
A = %pi*(rt^2-rh^2);
A1 = A + 0.0012
disp("Axial velocity can be determined from the continuity equation but since the inlet density (rho1) is unknown a trial and error method must be followed.")
disp("Assuming a density based on the inlet stagnation condition,")
P01 = 1; //in bars
R = 287;
T01 = 288;//K
rho1 = P01*10^5  /(R*T01)
disp("Using the continuity equation,")
m = 5.5;
Ca = m/(rho1*A1)
disp("Since the whirl component at the inlet is zero, the absolute velocity at the inlet is C1 = Ca.")
C1 = Ca;
disp("The temperature equivalent of the velocity is: Eq")
Cp = 1005;
Eq = C1^2 /(2*Cp)
T1 = T01 - Eq
disp("Using isentropic P–T relationship,")
P1 = P01*10^5 * (T1/T01)^3.5 /1000//kPa
rho1a = P1*1000/(R*T1) * 1.004
Caa = m/(rho1a * A1)
Eqa = Caa^2 /(2*Cp) * 1.003
T1a = T01 - Eqa
P1a = P01*10^5 *(T1a/T01)^3.5 /1000 //kPa
rho1b = P1a*1000/(R*T1a)
disp("Further iterations are not required and the value of rho1b = 1.13kg/m3 may be taken as the inlet density and Ca = C1 as the inlet velocity. At the eye tip:")
N = 16500;//rpm
Uet = 2*%pi*rt*N/60//m/s
disp("The blade angle at the eye tip:")
betat = atan(Uet/Caa)*180/%pi
disp("At the hub,")
Ueh = 2*%pi*rh*N/60//m/s
disp("The blade angle at the hub:")
betah = atan(Ueh/Caa)*180/%pi
disp("The Mach number based on the relative velocity at the eye tip using the inlet velocity triangle is:")
U1 = 216;
V1 = (Caa^2+U1^2)^0.5
disp("The relative Mach number")
gamma = 1.4;
M1 = V1/(gamma*R*T1a)^0.5
disp("A very small factor is multiplied to make approximity")

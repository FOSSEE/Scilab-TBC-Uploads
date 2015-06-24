// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 15")
disp("Impeller tip speed")
D2 = 0.56;//m
N = 15500;//rpm
U2 = %pi*D2*N/60 + 0.188
R = 287;
disp("Overall stagnation temperature rise Stagr = T03-T01")
psi = 1.04;
sigma = 0.9;
Cp =1005;
Stagr = psi*sigma*U2^2 /Cp
disp("Since T03 = T02")
T01 = 290;
T02 = Stagr + T01
disp("Now pressure ratio for impeller rat = P02/P01")
rat = (T02/T01)^3.5
P01 = 101 //kPa
P02 = rat * P01
Cw2 = sigma*U2
disp("Let Cr2 = 105 m/s")
Cr2 = 105;
disp("Outlet area normal to periphery")
disp("A2 = pi*D2 * impeller depth")
A2 = %pi*D2*0.038
disp("From outlet velocity triangle")
C2 = (Cr2^2 +Cw2^2)^0.5
T2 = T02 - C2^2 /(2*Cp)
disp("Using isentropic P–T relations")
P2 = P02*(T2/T02)^3.5
disp("From equation of state")
rho2 = P2/(R*T2) * 1000
disp("The equation of continuity gives")
m = 16;
Cr2a = m/(A2*P2) * 100
disp("Thus, impeller outlet radial velocity = 81.63 m/s")
disp("Impeller outlet Mach number")
gamma = 1.4;
M2 = C2/(gamma*R*T2)^0.5
disp("From outlet velocity triangle")
alpha2 = acos(Cr2/C2)*180/%pi
disp("Assuming free vortex flow in the vaneless space and for convenience denoting conditions at the diffuser vane without a subscript (r = 0.28 + 0.043 = 0.323)")
r = 0.323;
r2 = 0.28;
Cw = Cw2*r2/r
disp("The radial component of velocity can be found by trial and error. Choose as a first try, Cr = 105 m/s")
Cr = 105;
C = (Cw^2+Cr^2)^0.5
x = C^2 /(2*Cp)
disp("T = 482.53 - 68 (since T = T02 in vaneless space)")
T = T02-x
P = P02*(T/T02)^3.5
rho = rho2/(R*T2) * 10^5 * 1.132
disp("The equation of continuity gives")
A = 2*%pi*r*0.038
Cra = m/(rho*A)
disp("Next try Cra = 79.41 m/s")
Cra = 79.41;
x1 = (Cra^2 + Cw^2)/(2*Cp)
Ta = T02 -x1
Px = P02*(Ta/T02)^3.5//Pa
rhox = P/(Ta*R) * 1000  + 0.1
Crb = m/(rhox*A)
disp("Try Crb = 68.1m/s")
x2 = (Crb^2+Cw^2)/(2*Cp)
Tb = T02-x2
Py = P02*(Tb/T02)^3.5
rhoy = Py/(Tb*R)* 1000
Crc = m/(rhoy*A)
disp("Taking Crc as 68.63 m/s, the vane angle")
alpha = atan(Cw/Crc)*180/%pi
disp("Mach number at vane")
M = (2*Cp*x1/(gamma*R*Tb))^0.5
//I have gone through all the answer there is a printing mistake in book with two answers

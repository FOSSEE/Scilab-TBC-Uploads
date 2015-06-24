// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 11")
disp("The overall efficiency of turbine from nozzle inlet to diffuser outlet is given by")
disp("etatt = (T01 - T03)/(T01 - T03ss)")
disp("Turbine work per unit mass flow")
disp("W = U2^2 = Cp(T01 - T03); (Cw3 = 0)")
disp("Now using isentropic p–T relation")
disp("T01 (1 - T03ss/T01) = T01(1 - (P03/P01)((gamma-1)/gamma)")
disp("Therefore")
disp("U2^2 = etatt*Cp*T01(1 - (P03/P01)^((gamma-1)/gamma)")
etatt = 0.9;
Cp = 1147;
T01 = 1145;
P03 = 100;
P01 = 310;
U2 = (etatt*Cp*T01*(1 - (P03/P01)^0.2498))^0.5
disp("Impeller tip speed, U2 = 539.45 m/s")
disp("The Mach number of the absolute flow velocity at nozzle exit is given by")
disp("M = C1/a1 = U1/alpha1*sin(alpha1)")
disp("Since the flow is adiabatic across the nozzle, we have")
disp("T01 = T02 = T2 + C2^2/2Cp = T2 + U2^2/2Cp(sin(alpha2))^2")
disp("or T2/T01 = 1 - U2^2/2CpT01(sin(alpha2))^2; but Cp = gamma*R/(gamma - 1)")
disp("Therefore; T2/T01 = 1 - U2^2*(gamma - 1)/(2gammaRT01(sin(alpha2))^2")
disp("  =  1- U2^2*(gammaa-1)/(2*a01^2 * (sin(alpha2))^2)")
disp("But (T2/T01)^2 = a2/a01 = a2/a02; since T01 = T02")
disp("and a2/a02 = U2/M2*a02*sin(alpha2)")
disp(" Therefore (U2/M2*a02*sin(alpha2))^2 = 1 - U2^2*(gammaa-1)/(2*a01^2 * (sin(alpha2))^2)")
disp("and 1 = (U2/a02*sin(alpha2))^2 *((gamma - 1)/2 + 1/M2^2)")
disp("or (sin(alpha2))^2 = (U2/a02)^2 * ((gamma - 1)/2 + 1/M2^2)")
disp("Therefore nozzle angle alpha2 = 75 degrees")

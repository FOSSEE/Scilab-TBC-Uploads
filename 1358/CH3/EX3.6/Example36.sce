// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 6")
disp("Refering Figure")
disp("Hydraulic Efficiency etah = Power output/Energy available in the jet = P/(0.5mC1^2)")
disp("At entry to nozzle")
H = 610-46//in m
Cv = 0.98;
g = 9.81;
disp("Using nozzle velocity coefficient C1")
C1 = Cv * (2*g*H)^0.5
disp("Now W/m = U1Cw1 - U2Cw2 =U {(U + V1)-[U-V2cos(180 -alpha)]}= U[(C1 - U)(1 - k cos (alpha))] where V2 = kV1")
disp("Therefore W/m")
Wm = 0.46*C1*(C1-0.46*C1)*(1-0.99*cos(165*%pi/180))
etah = Wm/(0.5*103*103)
disp("Actual hydraulic efficiency")
etaha = 0.91*etah
disp("Wheel bucket speed")
s = 0.46*C1
disp("Wheel rotational speed N")
N = s*60/(0.445*2*%pi)
disp("Actual hydraulic efficiency")
disp("¼ Actual power/energy in the jet = (1260 * 10^3)/(0.5mC1^2)")
disp("Therefore")
m = 1260*1000/(0.882*0.5*103*103)
disp("For one nozzle,m")
mone = m/2
disp("For nozzle diameter, using continuity equation, m")
disp("m = rho*C1*A = rho*C1*pi*d^2/4")
disp("Hence, d in mm")
d = (mone*4/(%pi*103*1000))^0.5 *1000

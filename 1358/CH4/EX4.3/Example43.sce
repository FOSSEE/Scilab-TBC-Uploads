// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 3")
disp("Impeller tip speed is given by: U2")
D = 0.58//m
N = 16000//rpm
U2 = %pi* D* N/60
disp("Assuming isentropic flow between impeller inlet and outlet, then T02a")
T01 = 293;//K
stagratio = 4.2
T02a = T01*(stagratio)^0.286
disp("Using compressor efficiency, the actual temperature rise T02a-T01")
etac = 0.82
rise = (T02a-T01)/etac
disp("Since the flow at the inlet is axial, Cw1 = 0")
disp("W = U2Cw2 = Cp (T02 - T01)")
Cp = 1005
W = Cp*(rise)
Cw2 = W/U2
Slip = U2-Cw2
disp("Slip factor:")
sigma = Cw2/U2

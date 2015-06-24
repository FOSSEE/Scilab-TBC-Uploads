// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 19")
N = 1445//rpm
Q = 0.0352//m3/s
Ns = 14//rpm
g=9.81;
disp("Head developed in each stage is H in m: ")
H = (N * (Q^(1/2))/Ns)^(4/3)
disp("Total head required = 845m")
disp("Number of stages needed = 845/52 = 16")
disp("Number of stages in each pump = 8")
disp("Impeller speed at tip is U2 in m/s")
U2 = 0.96*(2*g*H)^0.5
disp("Impeller Diameter at tip D2")
//D2 = %pi*60*30.6*1445
disp("But U2 = pi*D2*N/60 Therefore D2 real in m")
D2real = U2 *60/(%pi*1445)

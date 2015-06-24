// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 20")
disp("Specific speed for a single impeller is given by")
disp("Ns = N*Q^0.5/H^0.75")
Ns = 700
H = 105
N = 900
Q = 5500/60//l/s
H = (N*Q^0.5/Ns)^(4/3)
disp("Hence total number of stages :")
Ht = 105;
Stages = Ht/H
disp("Stages in series are 4")

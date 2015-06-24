// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 13")
disp("Assuming the blades are of infinitesimal thickness, the flow area is given by A in m2 = impeller periphery * blade depth")
D2 = 0.26 //in m
d = 0.02//in m
N = 1400//in rpm
g =9.81;
Q= 0.03//m3/s
disp("Area A in m2")
A = D2*%pi*d
disp("Flow velocity Cr2 is given by")
Cr2 = Q/A
disp("Impeller tip speed, U2 in m/s is")
U2 = %pi*D2*N/60
disp("Absolute whirl component, Cw2 in m/s is given by")
Cw2 =  U2 - Cr2/tan(30*%pi/180)
disp("Using Euler’s equation, and assuming Cw1 = 0 (i.e., no whirl at inlet) Head H in m")
H = U2*Cw2/g
disp("Theoretical head with slip is Htheo in m")
Htheo = 0.78*H
disp("To find numbers of impeller blades, using Stanitz formula sigma = 1 - 0.63pi/n")
disp("Slip factor, sigma = 0.78")
sigma = 0.78;
disp("Number of blades required")
n = (0.63*%pi)/(1-sigma)
disp("Therefore n = 9")

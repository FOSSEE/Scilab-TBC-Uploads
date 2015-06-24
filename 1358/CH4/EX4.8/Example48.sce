// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 8")
disp("Since the vanes are radial, using the Stanitz formula to find the slip factor:")
n = 19;
sigma = 1-0.63*%pi/n
disp("The overall pressure ratio r = P03/P01")
etac = 0.84;
psi = 1.04;
r = 4.5;
Cp = 1005;
T01 = 293;
U2 = ((r^(1/3.5) - 1) *Cp*T01 /(etac*sigma*psi) )^0.5
disp("The impeller diameter")
N = 17000;
D = 60*U2/(%pi*N)
disp("The work done on the air")
W = psi*sigma*U2^2 /1000
disp("Power required to drive the compressor:")
m = 2.5;
P = m*W

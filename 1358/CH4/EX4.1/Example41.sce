// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 1")
disp("From the velocity triangle")
disp("Refering Figure")
beta2 = 25.5//degrees
Cr2 = 110//m/s
U2 = 475//m/s
Cw2 = U2 - tan(25.5*%pi/180)  * Cr2 //m/s
sigma = Cw2/U2
disp("The overall pressure ratio of the compressor:")
//r = P03/P04
etac = 0.8
psi = 1
Cp = 1005
T01 = 298
gamma = 1.4
r = (1 + etac * sigma * psi * U2^2 /(Cp*T01))^(gamma/(gamma-1))
disp("The theoretical power required to drive the compressor:")
m = 3
P = (m*sigma*psi*U2^2  /1000)
disp("Using mechanical efficiency, the actual power required to drive thecompressor is:")
Power = P / 0.96

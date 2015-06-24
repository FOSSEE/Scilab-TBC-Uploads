// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 4, Example 4")
//Impeller tip diameter = 1m
//Speed = 5945 rpm
//Mass flow rate of air = 28 kg/s
//Static pressure ratio p3/p1 = 2.2
//Atmospheric pressure = 1 bar
//Atmospheric temperature = 25 degree Celcius
//Slip factor = 0.90
disp("Neglect the power input factor.")
disp("The impeller tip speed is given by:")
D = 1;
N = 5945;
U2 = %pi*D*N/60
disp("The work input:")
sigma = 0.9;
W = sigma * U2^2 / 1000
disp("Using the isentropic P–T relation and denoting isentropic temperature by T3a, we get:")
T1 = 298;
r = 2.2;
T3a = T1 * (r)^ 0.286
disp("Hence the isentropic temperature rise: T3a - T1")
rise = T3a -T1
disp("The temperature equivalent of work done: T3 - T1")
Cp = 1.005
Weq = W/Cp
disp("The compressor adiabatic efficiency is given by:")
etac = rise/Weq  * 100
disp("The air temperature at the impeller exit is:")
T3 = T1 + Weq
disp("Power input:")
m = 28;
P = m * W

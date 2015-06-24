// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 7, Example 6")
disp("Annulus area A is given by")
disp("A = 2 pi*rm*h")
disp("where h = blade height")
disp("rm = mean radius")
disp("As we have to find the blade height from the outlet conditions, in this case annulus area is A3.")
disp("h = A3/2pi*rm")
disp("Um = pi*Dm*N")
Um = 300;//m/s
N = 240;//rps
Dm = Um/(%pi*N)
rm = Dm/2
disp("Temperature drop in the stage is given by Drop = T01-T03")
Drop = 145//Kelvins
T01 = 1150;
T03 = T01-Drop
C3 = 390;
Cpg = 1.147;
T3 = T03-C3^2 / (2*Cpg*1000)
disp("Using turbine efficiency to find isentropic temperature drop")
eta = 0.88;
T03a = T01-Drop/eta
disp("Using isentropic p–T relation for expansion process")
P01 = 8;
P03 = P01/(T01/T03a)^(4)
disp("Also from isentropic relation")
P3 = P03/(T03a/T3)^4
disp("where P01,P3;P03 are in bars")
R = 0.287;
rho3 = P3/(R*T3) *100//kg/m3
m = 34;//kg/s
Ca3 = C3;
A3 = m/(rho3*Ca3)
h = A3/(2*%pi*rm)
disp("where h is in m")

// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 11")
D2= 0.37;//in meters
N= 800;//in rpm
Q= 0.03;
Hgiven = 14;
disp("Impeller tip Speed U2 in m/s is :")
U2 = %pi *D2*N/60
disp("Radial velocity at the impeller exit Cr2 = 2.5 m/s ")
Cr2 = 2.5;
disp("Therefore")
Cw2 = U2 - Cr2/tan(%pi/4)
disp("When there is no slip, the head H developed will be")
g =9.81;
H = Cw2*U2/g
disp("If there are no hydraulic internal losses, the power utilized by the pump will be: P")
P = 0.96*8 //given efficiency = 0.96 and Power = 8 hp
disp("Theoretical flow rate Qtheo in m3/s :")
Qtheo = Q/0.97
disp("Ideal Height Hi :")
Hi = P * 0.746 / (g*Qtheo)
disp("The hydraulic efficiency is etah :")
etah =Hgiven/Hi *100

// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 17")
disp("Velocity in casing at inlet to turbine")
Q = 7.8;
disp("Cc = Discharge/(Cross - sectional area of casing)")
Cc = Q/(%pi*1^2 /4)
disp("The net head on turbine")
disp(" = Pressure head + Head due to turbine position + (Cc^2 - C1^2)/2g")
PrHead = 164
TurbHead = 5.4
C1 = 1.6
g = 9.81;
Hnet = PrHead + TurbHead + (Cc^2-C1^2)/(2*g)
disp("Waterpower supplied to turbine = QgH kW")
P = Q * g * Hnet
disp("Hence overall efficiency,etao = Shaft Power/Water Power")
etao = 12400/P  * 100

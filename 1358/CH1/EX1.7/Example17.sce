// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 1, Example 7")
// Using isentropic P-T Relation T02' = T01 * (P02/P01) ^ (gamm - 1 / 2)
//Total to total Efficiency etta tt implies T01 - T02 = (T01 - T02") * ettatt
//Power input W1 = cp * delta To
//Power output W2 = W1 * N2 ^ 2 * D2 ^ 2 / (N1 * D2)^2 
ettatt = 0.85;
T01 = 1050;
gamm = 1.4;
T02 = T01 * (1/4)^((1.4-1)/2);
disp("Power input in KJ/Kg and Power output in KJ/Kg are :")
W1 = 1.005 * 292.13
W2 = 293.59 * 1000 * 12500 ^ 2 * .2 ^ 2 / (15500^2 * 0.3^2)
disp("Therefore power output = ")
Power = W2/1000

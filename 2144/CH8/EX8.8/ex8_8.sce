// Exa 8.8
clc;
clear;
close;
// Given data
C = 0.75;// in kg
H = 0.08;// in kg
O = 0.03;// in kg
S = 0;// in kg
P = 1.1;// in bar
P = P*10^5;// in N/m^2
maBYmf = (11.6*C) + (34.8 * (H-(O/8))) + (4.35 *S);// in kg
disp(maBYmf ,"The mass of air in kg is");
m = 1.5*(maBYmf );// in kg
T = 20+273;// in K
R = 29.27;
V = (m*R*T)/P;// in m^3
disp(V,"Volume in m^3 is");

// Note: The calculated value of V in the book is wrong.

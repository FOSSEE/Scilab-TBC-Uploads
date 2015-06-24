// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 2")
m=0.5;//mass of gas in kg
u1=26.6;//internal energy of gas at 200 degree celcius
u2=37.8;//internal energy of gas at 400 degree celcius
W=0;//work done by vessel in KJ
disp("as the vessel is rigid therefore work done shall be zero")
disp("W=0")
disp("from first law of thermodynamics,heat required(Q)in KJ")
disp("Q=U2-U1+W=Q=m(u2-u1)+W")
Q=m*(u2-u1)+W
disp("so heat required =5.6 KJ")

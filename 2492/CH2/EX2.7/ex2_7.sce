// Exa 2.7
format('e',8)
clc;
clear;
close;
// Given data
V_T= 26*10^-3;// in V
T = 300;// in K
V = 0.25;// in V
I=  10 * 10^-3;// in A
// I = I_S*( (%e^(V/(n*kTdividedq)))-1 ) = I_S*( (%e^(V/V_T))-1 );
I_S= I/(%e^(V/V_T)-1);// in A
disp(I_S,"The reverse saturate current in amp. is : ")
format('v',6)
// For 1 mA current
I = 1;// in mA
I = I*10^-3;// in A
V = (1/38.46)*log(I/I_S);// in V
disp(V,"The bias voltage needed for 1 mA in V is");
// For 100 mA current
I = 100;// in mA
I = I * 10^-3;// in A
V = (1/38.46)*log(I/I_S);// in V
disp(V,"The bias voltage needed for 100 mA in V is");

// Note: Answer in the book is not accurate.

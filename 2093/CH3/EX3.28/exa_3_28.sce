// Exa 3.28
clc;
clear;
close;
// Given data 
V_B= 0;// in V
R_E=1*10^3;//in Ω
R_C=1*10^3;//in Ω
V_CC=5;// in V
V_BE= 0.7;// in V
V_E= V_B-V_BE;// in V
I_E= (1+V_E)/R_E;// in A
I_C= I_E;// (approx) in A
V_C= V_CC-I_C*R_C;//in V
disp("Part (i)")
disp(V_E,"The value of V_E in volt is : ");
disp(V_C,"The value of V_C in volt is : ");
// For saturation 
V_CE=0.2 ;// V
V_CB= -0.5;// in V
// I_C= 5-V_C/R_C and V_C= V_E-VCE, So
// I_C= (5.2-V_E)/R_C
// I_E= (V_E+1)/R_E and at the edge of saturation I_C=I_E,
V_E= 4.2/2;/// in V
V_B= V_E+0.7;// in V
V_C= V_E+0.2;// in V
disp("Part (ii) ")
disp(V_E,"The value of V_E in volts is : ");
disp(V_B,"The value of V_B in volts is : ");
disp(V_C,"The value of V_C in volts is : ");

// Note: In the book , there is a miss print in the last line of this question because V_E+0.2= 2.1+0.2 = 2.3  (not 2.8) , so answer in the book is wrong 



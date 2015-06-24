// Example 5.7
format('v',5)
clc;
clear;
close;
// given data
R_E= 2*10^3;// in Ω
R_C= 1*10^3;// in kΩ
V_E= 4.3;//in V
V_CC= 15;// in V
I_E= V_E/R_E;// in A
I_C= I_E;//in A
// In the first stage the collector voltage 
V_C= V_CC-I_C*R_C;// in A
disp(V_C,"In the first stage the collector voltage in volts is : ");
// Second stage
V_E= 2.3;// in V
R_E= 220;// in Ω
R_C= 470;// in Ω
I_E= V_E/R_E;// in A
I_C= I_E;//in A
// In the second stage the collector voltage 
V_C= V_CC-I_C*R_C;// in A
disp(V_C,"In the second stage the collector voltage in volts is : ");

// Note : In the book, the calculated value of collector voltage in first stage is not accurate.

// Example 4.14
clc;
clear;
close;
// Given data
I_B= 20*10^-6;// in A
V_CE= 7.3;// in V
V_BE= 0.6;// in V
V_E= 2.1;// in V
R_E= 0.68*10^3;// in Ω
R_C= 2.7*10^3;// in Ω
I_E= V_E/R_E;// in A
I_C= I_E;// in A (approx)
bita= round(I_C/I_B);
V_CC= V_CE+I_C*R_C+I_E*R_E;// in V
// From V_CC= I_B*R_B+V_BE+V_E
R_B= (V_CC-(V_BE+V_E))/I_B;// in Ω
disp(bita,"The value of bita is : ")
disp(V_CC,"The value of V_CC in volts is : ")
disp(R_B*10^-3,"The value of R_B in kΩ is : ")

// Note: In  the book, there is an error to calculate the value of R_B, hence the value of R_B in the book is wrong.

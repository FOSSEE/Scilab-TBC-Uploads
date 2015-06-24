// Exa 5.2
clc;
clear;
close;
// Given data
C_T1= 15; // in pF
Vb1=8;// in V
Vb2= 12;  // in V
// As C_T proportional to 1/sqrt(Vb), and 
// C_T1/C_T2= sqrt(Vb2/Vb1), so
C_T2= C_T1*sqrt(Vb1/Vb2);// in pF
disp(C_T2,"The value of C_T2 in pF is : ")

//Exa 6.22
clc;
clear;
close;
// Given data
T_A= 700;// in K
T_B= 600;// in K
T_C= 500;// in K
Q_A= 1200;// in kJ
// Q_B+Q_C= Q_A-200                             (i)
// Q_A/T_A = Q_B/T_B+Q_C/T_C    (ii)
// From eq(i) and (ii)
Q_B= (Q_A*(1/T_B-1/T_A)-200/T_B)/(1/T_B-1/T_C);// in kJ
Q_C= Q_A-Q_B-200;// in kJ
disp(Q_B,"The heat rejected at B in kJ is : ")
disp(Q_C,"The heat rejected at C in kJ is : ")


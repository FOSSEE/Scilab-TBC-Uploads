//Exa 6.21
clc;
clear;
close;
// Given data
T_A= 927+273;// in K
T_B= 127+273;// in K
T_C= T_B;// in K
// Q_A= Q_B+Q_C+W = 2*Q_B+W (since Q_B=Q_C)     (i)
// Q_A/T_A= Q_B/T_B+Q_C/T_C or
// Q_A= 2*Q_B*T_A/T_B           (ii)
// From eq (i) and (ii)W= 2*Q_B*(T_A/T_B-1)     (iii)
// Dividing (iii) by (ii)
WbyQ_A= (T_A/T_B-1)/(T_A/T_B);
disp(WbyQ_A*100,"The engine efficiency in % is : ")

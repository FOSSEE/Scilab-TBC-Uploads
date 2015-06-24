clc
P1=0.124*10^5; //N/m^2
T1=433; //K
T2=323; //K
h_f1=687; //kJ/kg
h2=2760; //kJ/kg
h3=2160; //kJ/kg
h_f4=209; //kJ/kg
Q1=h2-h_f1;
Q2=h_f4-h3;
disp("Let A=ΣdQ/T")
A=Q1/T1+Q2/T2;
disp(A)
disp("A<0. Hence classius inequality is verified")
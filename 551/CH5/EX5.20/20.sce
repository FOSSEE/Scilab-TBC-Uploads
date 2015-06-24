clc
T1=437; //K
T2=324; //K
h2=2760; //kJ/kg
h1=690; //kJ/kg
h3=2360; //kJ/kg
h4=450; //kJkg

Q1=h2-h1;
Q2=h4-h3;

disp("Let A=ΣdQ/T")
A=Q1/T1 + Q2/T2;
disp(A)
disp("Since A<0, Classius inequality is verified")
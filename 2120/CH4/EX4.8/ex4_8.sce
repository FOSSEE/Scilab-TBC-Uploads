//Exa 4.8
clc;
clear;
close;
// Given data
p1 = 0.01;// in N/mm^2
p1 = p1 * 10^3;// in kN/m^2
p2 = 50;// in kN/m^2
v1 = 5;// in m^3
v2 = 1.5;// in m^3
Gamma = 1.4;
// Formula p1*v1^n = p2*v2^n
n= log(p2/p1)/log(v1/v2);
disp(n,"Part (a)    The value of n is : ")
disp("The process followed during air compression is POLYTROPIC");
// Part (b)
disp("Part (b)    The law of the process is p*v^"+string(n)+" = constant");
// Part (c)
W= (p1*v1-p2*v2)/(n-1);// in kNm or (kJ)
disp(W,"Part (c)    Work done during the process in kJ is : ");
disp("The -ve sign indicates that the work has been done on the system")
// Part (d)
Q = ((Gamma - n)/(Gamma - 1) * W);// in kJ
disp(Q,"Part (d)    Heat transfer during the process in kJ is :");
disp("The -ve sign indicates that the heat is rejected from the system")

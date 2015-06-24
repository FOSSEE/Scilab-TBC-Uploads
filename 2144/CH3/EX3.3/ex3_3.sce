// Exa 3.3
clc;
clear;
close;
// Given data
P = 3.2;// in bar
P = P * 10^5;// in N/m^2
R = 292.7;// in kJ/kg-K
C_p = 1.003;// in kJ/kg-K
m = 1;
V1 = 0.3;// in m^3
V2 = 2*V1;// in m^3
W = P*(V2-V1);// in J
W =  W * 10^-3;// in kJ
disp(W,"The work done in kJ is");
T1 = (P*V1)/(m*R);// in K
disp(T1-273,"The intail Temperature in °C is");
T2 = T1*(V2/V1);// in K
disp(T2-273,"The final temperature in °C is");
Q = m*C_p*(T2-T1);// in kJ
disp(Q,"The Heat added in kJ is");

// Note: To evaluate the value of Heat added, wrong value of T1 is putted (i.e 273 k  at place of 328 K), so the answer of Heat added is wrong in the book.

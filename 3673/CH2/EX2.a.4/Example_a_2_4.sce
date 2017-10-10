//Example 2_4 page no:88
clc;
A=[1.25,-0.75,
   -4.75,5.75];
B=[-12.5,
    42.5];
X=inv(A)*B;
Va=X(1);
Vb=X(2);
I10=(Va-Vb+10)/4;
P=10*I10;
disp(P,"the power supplied by 10V source is (in W)");

//Example 2_9 page no:94
clc;
R5=5;
A=[0.42,-0.167,-0.25,
    -0.42,0.5,0.45,
    0,-1,1]
B=[18,
    -15,
    20];
X=inv(A)*B;
V1=X(1);
V2=X(2);
V3=X(3);
I5=V3/5;
P=I5^2*R5;
disp(P,"the power absorbed by 5 ohm resistor is (in W)");
//in text book value of I5^2 is rounded up so result vary slightly

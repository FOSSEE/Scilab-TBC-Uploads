//Example 2_10 page no:95
clc;
A=[0.34,1.2,-1.34,
    -0.34,-1,1.83,
    1,-1,0];
B=[3,
    0,
    10];
X=inv(A)*B;
V1=X(1);
V2=X(2);
V3=X(3);
P=V2*5;
disp(P,"the power delivered by the current source(5A) is (in W)");

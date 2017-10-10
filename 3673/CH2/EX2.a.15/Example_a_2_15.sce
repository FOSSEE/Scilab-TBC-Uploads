//Example 2_15 page no:99
clc;
A=[12,6,-5,
    -1,1,0,
    0,0,1]
B=[4,
    5,
    -2];
X=inv(A)*B;
I1=X(1);
I2=X(2);
V2=2*I1;
P4=4*I2;
disp(V2,"the voltage across 2 ohm resistor is (in V)");
disp(P4,"the power delivered by 4V source is (in W)");

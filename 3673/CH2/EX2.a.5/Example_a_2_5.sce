//Example 2_5 page no:90
clc;
R=16.67;
A=[75,-25,
    -58.35,25];
B=[25,
    10];
X=inv(A)*B;
I1=X(1);
I2=X(2);
Vx=I1*R;
disp(Vx,"the voltage across 16.67 ohm resistor is (in V)");

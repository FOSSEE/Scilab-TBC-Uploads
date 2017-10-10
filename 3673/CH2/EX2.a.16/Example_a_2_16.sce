//Example 2_16 page no:99
clc; 
A=[10,5,4,
    1,-1,0,
    -2,-1,1];
B=[35,
    2,
    0];
X=inv(A)*B;
I1=X(1);
disp(I1,"the current in the 10 ohm resistor is (in A)");

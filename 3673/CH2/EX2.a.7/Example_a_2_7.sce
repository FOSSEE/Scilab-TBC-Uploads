//Example 2_7 page no:91
clc;
A=[0.93,-0.1,
    -0.1,0.443];
B=[17.29,
    7.143];
X=inv(A)*B;
V1=X(1);
V2=X(2);
V=3*((0.93*V1)-(0.1*V2));
disp(V,"the voltage V in the cicuit is (in V)");

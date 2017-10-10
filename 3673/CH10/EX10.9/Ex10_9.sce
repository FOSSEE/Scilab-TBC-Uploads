//Example 10_9 page no:451
clc;
//given
L=[1,2,//here L1+L2 is kept as L
1,-2];
a=[0.4,
0.2];
X=inv(L)*a;
disp(X(2),"the mutual inductance of the coil is (in H)");

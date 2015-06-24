//Basic Circuit Concepts
//page no-1.10
//example1.2
disp("from the given fig:")
disp("I2-I3=13");
disp("-20*I1+8*I2=0");
disp("-12*I1-16*I3=0");
//solving these equations in the matrix form
A=[0 1 -1;-20 8 0;-12 0 -16]
B=[13 0 0]'
disp("A=")
disp(A)
disp("B=")
disp(B)
X=inv(A)*B
disp("X=")
disp(X)
disp("I1 = 4Ampere")
disp("I2 = 10Ampere")
disp("I3 = -3Ampere")
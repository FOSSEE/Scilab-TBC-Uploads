//Network Theorem 1
//page no-2.13
//example2.14
disp("Mesh 1 contains a current source of 6A.Hence, we cannot write KVL equation for Mesh 1.direction of current source and mesh current I1 are same,");
disp("I1=6A");....//equation 1
disp("Applying KVL to mesh 2");
disp("18*I2-6*I3=108");....//equation 2
disp("Applying KVL to mesh 3");
disp("6*I2-11*I3=9");....//equation 3
disp("Solving the three equations");
A=[18 -6;6 -11];...//solving the equations in matrix form
B=[108 9]'
X=inv(A)*B;
disp(X);
disp("I3 = 3A");
disp("I2ohm = 3A");
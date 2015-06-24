//Network Theorem 1
//page no-2.20
//example 2.11
disp("Applying KVL to mesh 1");
disp("3*I1-I2-2*I3=8");....//equation 1
disp("Applying KVL to mesh 2");
disp("-I1+8*I2-3*I3=10");....//equation 2
disp("Applying KVL to mesh 3");
disp("-2*I1-3*I2+10*I3=12");....//equation 3
disp("Solving the three equations");
A=[3 -1 -2;-1 8 -3;-2 -3 10];//solving the equations in matrix form
B=[8 10 12]'
X=inv(A)*B;
disp(X);
disp("I1=6.01 A");
disp("I1=3.27 A");
disp("I3=3.38 A");
disp("I5ohm=3.38 A");
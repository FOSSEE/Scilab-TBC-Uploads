//Network Theorem 1
//page no-2.19
//example 2.10
disp("Applying KVL to mesh 1");
disp("7*I1-I2=10");....//equation 1
disp("Applying KVL to mesh 2");
disp("-I1+6*I2-3*I3=0");....//equation 2
disp("Applying KVL to mesh 3");
disp("-3*I2+13*I3=-20");....//equation 3
disp("Solving the three equations");
A=[7 -1 0;-1 6 -3;0 -3 13];//solving the equations in matrix form
B=[10 0 -20]'
X=inv(A)*B;
disp(X);
disp("I1=1.34 A");
disp("I1=-0.62 A");
disp("I3=-1.68 A");
disp("I2ohm=1.34 A");
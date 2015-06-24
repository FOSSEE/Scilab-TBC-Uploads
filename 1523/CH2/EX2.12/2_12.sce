//Network Theorem 1
//page no-2.21
//example 2.12
disp("Applying KVL to mesh 1");
disp("8*I1-I2-4*I3=4");....//equation 1
disp("Applying KVL to mesh 2");
disp("-I1+8*I2-5*I3=0");....//equation 2
disp("Applying KVL to mesh 3");
disp("-4*I1-5*I2+15*I3=0");....//equation 3
disp("Solving the three equations");
A=[8 -1 -4;-1 8 -5;-4 -5 15];//solving the equations in matrix form
B=[4 0 0]'
X=inv(A)*B;
disp(X);
disp("I1=0.66");
disp("I1=0.24 A");
disp("I3=0.26 A");
disp("current supplied by the battery = 0.66 A");
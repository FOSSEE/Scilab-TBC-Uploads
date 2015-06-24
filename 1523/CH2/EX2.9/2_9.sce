//Network Theorem 1
//page no-2.18
//example2.9
disp("Applying KVL to mesh 1");
disp("10*I1-3*I2-6*I3=0");....//equation 1
disp("Applying KVL to mesh 2");
disp("-3*I1+10*I2=-5");....//equation 2
disp("Applying KVL to mesh 3");
disp("-6*I1+10*I3=25");....//equation 3
disp("Solving the three equations");
A=[10 -3 -6;-3 10 0;-6 0 10]//solving the equations in matrix form
B=[10 -5 25]'
X=inv(A)*B;
disp(X);
disp("I1=4.27 A");
disp("I2=0.78 A");
disp("I3=5.06 A");
disp("I5ohm=4.27 A");
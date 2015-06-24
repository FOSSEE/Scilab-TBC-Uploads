//Network Theorem 1
//page no-2.22
//example 2.13
disp("Applying KVL to mesh 1");
disp("V+13*I1-2*I2-5*I3=20");...//mesh equation 1
disp("Applying KVL to mesh 2");
disp("2*I1-6*I2+I3=0");//mesh equation 2
disp("Applying KVL to mesh 3");
disp("V+5*I1+I2-10*I3=0");//mesh equation 3
disp("putting I1=0 in equation 1, 2 and 3 we get"); 
disp("V-2*I2-5*I3=20");....//equation 1
disp("-6*I2+I3=0");....//equation 2
disp("V+I2-10*I3=0");....//equation 3
disp("Solving the three equations");
A=[1 -2 -5;0 -6 1;1 1 -10];//solving the equations in matrix form
B=[20 0 0]'
X=inv(A)*B;
disp(X);
disp("V=43.7 V")
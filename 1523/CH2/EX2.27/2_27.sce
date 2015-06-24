//Network Theorem 1
//page no-2.31
//example2.27
disp("Applying KCL to node 1:");
disp("50*V1-20*V2 = 2400");....//equation 1
disp("Applying KCL to node 2:");
disp("-10*V1+19*V2 = 240");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[50 -20;-10 19];
B=[2400 240]'
X=inv(A)*B;
disp(X);
disp("V1= 67.2 V");
disp("V2=-48 V");

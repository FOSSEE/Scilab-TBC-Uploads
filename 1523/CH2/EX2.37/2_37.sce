//Network Theorem 1
//page no-2.39
//example2.37
disp("Applying KCL to node 1:");
disp("2*V1+17*V2 = 0");....//equation 1
disp("Applying KCL to node 2:");
disp("V1+6V2 = 0");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[2 17;1 6];
B=[0 0]'
X=inv(A)*B;
disp(X);
disp("V1= 0 V");
disp("V2= 0 V");



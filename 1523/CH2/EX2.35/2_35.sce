//Network Theorem 1
//page no-2.38
//example2.35
disp("Applying KCL to node 1:");
disp("2.5*V1-0.5*V2 = 5");....//equation 1
disp("Applying KCL to node 2:");
disp("V1-V2 = 0");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[2.5 -0.5;1 -1];
B=[5 0]'
X=inv(A)*B;
disp(X);
disp("V1= 2.5 V");
disp("V2=-2.5 V");


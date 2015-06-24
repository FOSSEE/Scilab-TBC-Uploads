//Network Theorem 1
//page no-2.29
//example2.24
disp("Applying KCL to node 1:");
disp("2*V1-V2 = 2");....//equation 1
disp("Applying KCL to node 2:");
disp("3*V2-V1 = 4");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[2 -1;-1 3];
B=[2 4]'
X=inv(A)*B;
disp(X);
disp("V1= 2 V");
disp("V2=-2 V");

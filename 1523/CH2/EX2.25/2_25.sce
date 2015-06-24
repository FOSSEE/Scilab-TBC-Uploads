//Network Theorem 1
//page no-2.30
//example2.25
disp("Applying KCL to node 1:");
disp("8*VA-2*VB = 50");....//equation 1
disp("Applying KCL to node 2:");
disp("-3*VA+9*VB = 85");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[8 -2;-3 9];
B=[50 85]'
X=inv(A)*B;
disp(X);
disp("VA= 9.39 V");
disp("VB= 12.58 V");


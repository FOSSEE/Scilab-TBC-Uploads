//Network Theorem 1
//page no-2.32
//example2.28
disp("Applying KCL to node 1:");
disp("4*VA-2*VB = 5");....//equation 1
disp("Applying KCL to node 2:");
disp("-2*VA+3*VB = 4");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[4 -2;-2 3];
B=[5 4]'
X=inv(A)*B;
disp(X);
disp("VA= 2.88 V");
disp("VB= 3.25 V");



//Network Theorem 1
//page no-2.40
//example2.38
disp("Applying KCL to node a:");
disp("2*Va-0.5*Vb-0.5*Vc = 5");....//equation 1
disp("Applying KCL to node b:");
disp("-3/2*Va+5/6*Vb+2/3*Vc = -1");...//equation 2
disp("Applying KCL to node c:");
disp("1/2*Va+1/3*Vb-31/30*Vc = -1");...//equation 3
disp("Solving equations 1,2 and 3");...//solving equations in matrix form
A=[2 -0.5 -0.5;-3/2 5/6 2/3;0.5 1/3 -31/30 ];
B=[5 -1 0]'
X=inv(A)*B;
disp(X);
disp("Va= 4.303 V");
disp("Vb= 3.87 V");
disp("Vc= 3.33 V");



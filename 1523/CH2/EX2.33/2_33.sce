//Network Theorem 1
//page no-2.36
//example2.33
disp("Applying KCL to node a:");
disp("6*Va-5*Vb = -20");....//equation 1
disp("Applying KCL to node b:");
disp("-10*Va+17*Vb-5*Vc = 0");...//equation 2
disp("At node c");
disp("Vc = 20");
disp("Solving equations 1,2 and 3");...//solving equations in matrix form
A=[6 -5 0;-10 17 -5;0 0 1];
B=[-20 0 20]'
X=inv(A)*B;
disp(X);
disp("Va= 3.08 V");
disp("Vb= 7.69 V");
x=3.08;
y=7.69;
z=20;
Va = x-y;
Vb = y-z;
mprintf("\nV1 = Va-Vb =%.2f V \nV2 = Vb-Vc =%.2f V",Va,Vb);

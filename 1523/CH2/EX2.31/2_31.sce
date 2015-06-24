//Network Theorem 1
//page no-2.34
//example2.30
disp("Applying KCL to node a:");
disp("0.5*Va-0.2*Vb = 34.2");....//equation 1
disp("Applying KCL to node b:");
disp("0.1*Va-0.4*Vb = -32.4");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[0.5 -0.2;0.1 -0.4];
B=[34.2 -32.4]'
X=inv(A)*B;
disp(X);
disp("Va= 112 V");
disp("Vb= 109 V");
x=112;
y=109;
I1=(120-x)/0.2;
I2=(x-y)/0.3;
I3=(110-y)/0.1;
mprintf("\nI1= %.f A \nI2= %.f A \nI3= %.f A",I1,I2,I3);



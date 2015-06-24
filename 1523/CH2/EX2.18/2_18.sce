//Network Theorem-1
//pg no.-2.25
//example2.18
disp("from the fig,");
disp("Iy=I1");....//equation 1
disp("Ix=I1-I2");....//equation 2
disp("Applying Kvl to mesh 1:");
disp("-10*I1+3*I2=5");....//equation 3
disp("Applying Kvl to mesh 2:");
disp("-I1-3*I2=10");...//equation 4
disp("Solving equations 3 and 4");...//solving equations in matrix form
A=[-10 3;-1 -3];
B=[5 10]'
X=inv(A)*B;
disp(X);
disp("I1=-1.364 A");
disp("I2=-2878 A");
x=-1.364;
y=-2.878;
Ix=x-y;
mprintf("\nIy = %.3f A \nIx = %.3f A",x,Ix);

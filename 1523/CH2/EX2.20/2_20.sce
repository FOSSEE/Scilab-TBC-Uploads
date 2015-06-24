//Network Theorem 1
//page no-2.26
//example2.20
disp("writing equation for supermesh,");
disp("I1-I3=7");....//equation 1
disp("Applying Kvl to the outer path of the supermesh:");
disp("-I1+4*I2-4*I3 = -7");....//equation 2
disp("Applying Kvl to mesh 2:");
disp("I1-6*I2+3*I3 = 0");...//equation 3
disp("Solving equations 1 ,2 and 3");...//solving equations in matrix form
A=[1 0 -1;-1 4 -4;1 -6 3];
B=[7 -7 0]'
X=inv(A)*B;
disp(X);
disp("I1=9 A");
disp("I2=-2.5 A");
disp("I3=-2 A");
x=2.5;
y=2;
z=x-y;
mprintf("\nCurrent through the 3-Ohm resistor = I2-I3 =%.1f A",z);

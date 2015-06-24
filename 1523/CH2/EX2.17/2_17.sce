//Network Theorem 1
//page no-2.25
//example2.17
disp("from the fig,");
disp("V1=-5*I1");....//equation 1
disp("V2=2*I2");....//equation 2
disp("Applying Kvl to mesh 1:");
disp("20*I1+3*I2=-5");....//equation 3
disp("Applying Kvl to mesh 2:");
disp("11*I1-3*I2=10");...//equation 4
disp("Solving equations 3 and 4");...//solving equations in matrix form
A=[20 3;11 -3];
B=[-5 10]'
X=inv(A)*B;
disp(X);
disp("I1=0.161 A");
disp("I2=-2.742 A");
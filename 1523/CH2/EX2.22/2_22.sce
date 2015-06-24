//Network Theorem 1
//page no-2.28
//example2.22
disp("from the fig,");
disp("I4=40");....//equation 1
disp("\nmeshes 2 and 3 form a supermesh. current equation for supermesh,")
disp("-I1+2*I2-I3 = 0");....//equation 2
disp("Applying Kvl to supermesh:");
disp("-1/5(I2-I1)-1/20*I2-1/15*I3-1/2(I3-I4)=0");....//equation 3
disp("applying KVL to mesh 1");
disp("-1/10*I1-1/5(I1-I2)-1/6(I1-I4)=6");...//equation 4
disp("Solving equations 1 ,2 ,3 and 4");...//solving equations in matrix form
A=[0 0 0 1;-1 2 -1 0;0.2 -0.25 -17/30 0.5;-7/15 0.2 0 1/6];
B=[40 0 0 6]'
X=inv(A)*B;
disp(X);
disp("I1=10 A");
disp("I2=-20 A");
disp("I3=30 A");
disp("I4=40 A");

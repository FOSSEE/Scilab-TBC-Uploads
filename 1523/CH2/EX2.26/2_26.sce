//Network Theorem 1
//page no-2.30
//example2.26
disp("Applying KCL to node 1:");
disp("5*V1-2*V2 = -24");....//equation 1
disp("Applying KCL to node 2:");
disp("10*V1-31*V2+6*V3 = 300");...//equation 2
disp("Applying KCL to node 3:");
disp("-4*V2 +9*V3 = 160");...//equation 3
disp("Solving equations 1,2 and 3");...//solving equations in matrix form
A=[5 -2 0;10 -31 6;0 -4 9];
B=[-24 300 160]'
X=inv(A)*B;
disp(X);
disp("V1= -8.77 V");
disp("V2= -9.92 V");
disp("V3= 13.37 V");
x=13.37;
y=-9.92;
z=(x-y)/5;
printf("\ncurrent through the 5 ohm resistor = V3-V2/5 = %.2f A",z);

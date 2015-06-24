//Network Theorem 1
//page no-2.33
//example2.29
disp("Applying KCL to node 1:");
disp("4*V1-2*V2-V3 = -24");....//equation 1
disp("Applying KCL to node 2:");
disp("-50*V1+71*V2-20*V3 = 0");...//equation 2
disp("Applying KCL to node 3:");
disp("-5V1-4*V2 +10*V3 = 180");...//equation 3
disp("Solving equations 1,2 and 3");...//solving equations in matrix form
A=[4 -2 -1;-50 71 -20;-5 -4 10];
B=[-24 0 180]'
X=inv(A)*B;
disp(X);
disp("V1= 6.35 V");
disp("V2= 11.76 V");
disp("V3= 25.88 V");
x=25.88;
y=11.76;
z=(x-y);
printf("\ncurrent through the 5 ohm resistor = V3-V2/5 = %.2f A",z);

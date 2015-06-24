//Network Theorem 1
//page no-2.35
//example2.35
disp("Applying KCL to node 1:");
disp("V1 = 50");....//equation 1
disp("Applying KCL to node 2:");
disp("-2*V1+17*V2 = 50");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[1 0;-2 17];
B=[50 50]'
X=inv(A)*B;
disp(X);
disp("V1= 50 V");
disp("V2= 8.82 V");
x=8.82;
y=(x/10);
printf("\ncurrent in the 10-Ohm resistor =V2/10 =%.2f A",y);


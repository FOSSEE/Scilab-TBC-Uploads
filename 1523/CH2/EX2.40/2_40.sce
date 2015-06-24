//Network Theorem 1
//page no-2.42
//example2.40
disp("selecting central node as reference node");
disp("V1= -12 V");//equation 1
disp("Applying KCL at node 1:");
disp("-2*V1+2.5*V2-0.5V3 = 14");....//equation 2
disp("nodes 3 and 4 form a supernode");
disp("0.2*V1+V3-1.2*V4 = 0");...//equation 3
disp("Applying KCL to supernode :");
disp("0.1*V1-V2+0.5*V3+1.4*V4 = 0");...//equation 4
disp("Solving equations 1,2,3 and 4");...//solving equations in matrix form
A=[1 0 0 0;-2 2.5 -0.5 0;0.2 0 1 -1.2;0.1 -1 0.5 1.4];
B=[-12 14 0 0]'
X=inv(A)*B;
disp(X);
disp("V1= -12 V");
disp("V2= -4 V");
disp("V3= 0");
disp("V4= -2 V");


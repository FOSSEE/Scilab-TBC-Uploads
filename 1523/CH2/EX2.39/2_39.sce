//Network Theorem 1
//page no-2.41
//example2.39
disp("from the figure");
disp("V4= 40 V");//equation 1
disp("nodes 2 and 3 form suoernode:");
disp("V1-2*V2+V3 = 0");....//equation 2
disp("Applying KCL to node 1:");
disp("7/15*V1-1/5*V2 = 2/3");...//equation 3
disp("Applying KCL to supernode :");
disp("-23/30*V1 +83/60*V3 = 20");...//equation 4
disp("Solving equations 1,2,3 and 4");...//solving equations in matrix form
A=[0 0 0 1;1 -2 1 0;7/15 -1/5 0 0;-23/30 83/60 0 0];
B=[40 0 2/3 20]'
X=inv(A)*B;
disp(X);
disp("V1= 10 V");
disp("V2= 20 V");
disp("V3= 30 V");

//Network Theorem 1
//page no-2.37
//example2.334
disp("At node A:");
disp("VA = 60");....//equation 1
disp("Applying KCL to node B:");
disp("-VA+3*VB-VC = 12");...//equation 2
disp("Applying KCL to node C:");
disp("-2*VA-5*VB+10*VC");...//equation 3
disp("Solving equations 1,2 and 3");...//solving equations in matrix 
A=[1 0 0;-1 3 -1;-2 -5 10];
B=[60 12 24]'
X=inv(A)*B;
disp(X);
disp("VC= 31.68 V");
disp("Voltage across the 100 Ohm resistor = 31.68 V");


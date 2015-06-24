//Network Theorem 1
//page no-2.26
//example2.19
disp("Applying KVL to mesh 1:");
disp("11*I1-10*I2=2");....//equation 1
disp("Writing current equation to supermesh:")
disp("I3-I2=4");....//equation 2
disp("Applying KVL to outer path of supermesh:");
disp("2*I1-3*I2-3*I3=0");....//equation 3
disp("solving these equations we get :");...//solving equations in matrix form
A=[11 -10 0;0 -1 1;2 -3 -3];
B=[2 4 0]'
X=inv(A)*B;
disp(X);
I1=-2.35
I2=-2.78
I3=1.22
I4=I1-I2;
printf("\ncurrent through the 10 ohm resistor = I1-I2 = %.2f A", I4);
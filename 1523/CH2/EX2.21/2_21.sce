//Network Theorem 1
//page no-2.27
//example2.21
disp("Applying KVL to mesh 1:");
disp("15*I1-10*I2-5*I3=50");....//equation 1
disp("Writing current equation to supermesh:")
disp("I2-I3=2 A");....//equation 2
disp("Applying KVL to outer path of supermesh:");
disp("-15*I1+12*I2+6*I3=0");....//equation 3
disp("solving these equations we get :");...//solving equations in matrix form
A=[15 -10 -5;0 1 -1;-15 12 6];
B=[50 2 0]'
X=inv(A)*B;
disp(X);
I1=20
I2=17.33
I3=15.33
I4=I1-I3;
printf("\ncurrent through the 5 ohm resistor = I1-I3 = %.2f A", I4);
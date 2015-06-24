//Network Theorem 1
//page no-2.34
//example2.30
disp("Applying KCL to node 1:");
disp("8*V1-V2 = 50");....//equation 1
disp("Applying KCL to node 2:");
disp("-2*V1+11*V2 = -500");...//equation 2
disp("Solving equations 1 and 2");...//solving equations in matrix form
A=[8 -1;-2 17];
B=[50 -500]'
X=inv(A)*B;
disp(X);
disp("V1= 2.61 V");
disp("V2=-29.1 V");
x=2.61;
y=-29.1;
I1=-x/2;
I2=(x-y)/10;//current through 10 Ohm resistor
I3=(y+50)/2;//50 volts is the supply to the circuit
mprintf("\nI1= %.2f A \nI2= %.2f A \nI3= %.2f A",I1,I2,I3);


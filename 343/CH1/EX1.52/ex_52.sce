R1=2;
R2=4;
R3=4;
R4=2;
I1=2;
I2=4;
A=[2,-1;1,-3];                //Applying KCL at the two nodes
B=[8;-16];
V=inv(A)*B;
disp("Volts",V(1,1),"Voltage at node A")
disp("Volts",V(2,1),"Voltage at node B")
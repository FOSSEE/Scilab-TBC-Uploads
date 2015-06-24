//example 4.2
clc; funcprot(0);
// Initialization of Variable
m=0.1;
v1=2.2661;
P2=20;//pressure
v2=2.6704;
V1=m*v1;
disp(V1,"volume in ft^3");
V2=m*v2;
disp(V2,"volume in ft^3");
W=P2*(V2-V1)*144/778;
disp(W,"Work done in Btu");
clear()

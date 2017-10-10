//Example_a_9_15 page no:416
clc;
cos_pi=0.8;
Prc=15000;
Pt=Prc*sqrt(3)/0.75;
W=[-1,1,
    1,1];
P=[8660.508,
    34641.01];
X=inv(W)*P;
disp(Pt,"the total power input is (in W)");
disp(X(1),"the first watt meter reading is (in W))");
disp(X(2),"the second watt meter reading is (in W)");

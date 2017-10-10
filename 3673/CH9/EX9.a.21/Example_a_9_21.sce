//Example_a_9_21 page no:419
clc;
V=400;
f=50;
Iph=20;
pi=40;
Il=sqrt(3)*Iph;
Pt=sqrt(3)*V*Il*cosd(pi);
Pt=Pt/1000;//converting to killo watt
W1_W2=V*Il*sind(pi);
W1_W2=W1_W2/1000;//conveting to killo watt
W=[1,1
    1,-1];
P=[Pt,
    W1_W2];
X=inv(W)*P;
disp(Il,"the line current is (in A)");
disp(Pt,"the total power is (in kW)");
disp(X(1),"the first watt meter reading is (in kW)");
disp(X(2),"the second watt meter reading is (in kW)");

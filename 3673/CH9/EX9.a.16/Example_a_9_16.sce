//Example_a_9_16 page no:417
clc;
P=10000;
pf=0.707;
pi=acosd(pf);
tan_pi=tand(pi);
watt_diff=tan_pi*P/sqrt(3);
W=[1,1
    -1,1];
Pow=[10000,
    watt_diff];
X=inv(W)*Pow;
X(1)=X(1)/1000;//converting to killo Watt
X(2)=X(2)/1000;//converting to killo Watt
disp(X(1),"the first watt meter reading is (in kW)");
disp(X(2),"the second watt meter reading is (in kW))");

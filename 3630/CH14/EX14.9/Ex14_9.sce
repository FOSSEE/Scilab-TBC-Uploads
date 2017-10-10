clc;
Rc=1500;
RL=5000;
C=0.00000022;
f1C=1/(2*3.14*(Rc+RL)*C);
disp('Hz',f1C,"f1C=")//The answers vary due to round off error

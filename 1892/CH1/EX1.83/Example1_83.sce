// Example  1.83

clc;clear;close;

// Given data
format('v',7);
Zst=25;//in N-m

//calculations
disp("Zst=K*R2/(R2^2+X2^2)");
//K=2*Zst*R2
KbyR2=2*Zst;//calculation
//(a) Tst=K*2*R2/((2*R2)^2+R2^2)
Tst=KbyR2*2/(2^2+1);//in N-m
disp(Tst,"(a) Starting torque in N-m ; ");
//(b) Tst=K/2*R2/((R2/2)^2+R2^2)
Tst=KbyR2/2/((1/2)^2+1);//in N-m
disp(Tst,"(b) Starting torque in N-m ; ");

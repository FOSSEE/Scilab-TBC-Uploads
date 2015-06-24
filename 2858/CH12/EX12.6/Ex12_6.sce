//example 12.6
clc; funcprot(0);
Qws=1005-250;
Qwp=250;
epsilon=0.65;
L=11;
Ds=1.5;
Es=14000;
Ap=%pi/4*1.5^2;
Ep=21e6;
Cp=0.04;
Db=1.5;
mus=0.3;
p=%pi*1.5;
Nc=9;
qp=105*Nc;
se1=(Qwp+epsilon*Qws)*L/(Ap*Ep);
se2=Qwp*Cp/(Db*qp);
Iws=2+0.35*sqrt(L/Ds);
se3=Qws/p/L*Ds/Es*(1-mus^2)*Iws;
se=se1+se2+se3;
disp(se*1000,"net settlement in mm");


//example 11.6
clc; funcprot(0);
L=21;
Qwp=502-350;
Qws=350;
Ap=0.1045;
Ep=21e6;
epsilon=0.62;
Se1=(Qwp+epsilon*Qws)*L/Ap/Ep;
//part2
Iwp=0.85;
qwp=152/Ap;
Es=25e3;
D=0.356;
mus=0.35;
Se2=qwp*D/Es*Iwp*(1-mus^2);
//part3
p=1.168;
Iws=2+0.35*sqrt(L/D);
Se3=Qws/p/L*D/Es*Iws*(1-mus^2);
Se=Se1+Se2+Se3;
disp(Se*1000,"settlement in mm");


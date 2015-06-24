//example 11.2
clc; funcprot(0);
//parta
K=1.3;
f0=0;
Delta=0.8*30;
D=16/12;
L1=50;
p=4*16/12;
Gamma=110/1000;
L=15*D;
sigma=Gamma*L;
f20=K*sigma*tan(Delta*%pi/180);
Qs=(f0+f20)/2*(p*L)+f20*p*(L1-L);
disp(Qs,"ultimate load in kip");
//partb
FS=4;
Qp=56.45/3+234.7/3+179.9/3;
Qu=Qs+Qp;
Qall=Qu/FS;
disp(Qall,"allowed load in kip");


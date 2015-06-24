// Determine The States of the systems at the end of first iteration.
clear
clc
Qm1=-.24;
Qm2=-.24;
Qm3=.5;
do=0;
Pm1=.12;
Pm2=.21;
Pm3=-.30;
W1=3;
r1=W1;//assuming r1=Inverse(R1)
W2=5;
r2=W2;//assuming r2=Inverse(R1)
W3=2;
r3=W3;//assuming r3=Inverse(R1)
X12=%i*.03;
X13=%i*.01;
X23=%i*.02;
X21=X12;
X31=X13;
X32=X23;
Vo=[1.05;1.05];
H=[-1/.03 -1/.01;((1/.03)+(1/.02)) -1/.02;-1/.02 ((1/.01)+1/.02)];//assuming dh/dl=H
A1=[3327+34700+5000 9990-20825-15000;-25835 30000+12500+45000];
V=Vo+inv(A1)*(H')*(diag([W1;W2;W3]))*[Qm1;Qm2;Qm3];
d=do+inv(A1)*(H')*(diag([W1;W2;W3]))*[Pm1;Pm2;Pm3];//assuming d=dell matrix and do=intial matrix=0
disp(V,"V=");
disp(d,"d=");

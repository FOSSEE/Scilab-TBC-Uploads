clear;
clc;
z1=2.00;
z2=(-.250);
z3=1.200;
z4=11.00;
z5=(-1.00);
//z1,z2,z3 are currents and z4,z5 is voltage
//if v2 is short circuited
z11=(1/(2+(24/10)));
z22=(6/10)*z11;
z33=(4/10)*z11;
z44=z33*6;
z55=z22*4;
//when v1 is short ckted;
z2a=(1/(4+(12/8)));
z1a=(6/8)*z2a;
z3a=(2/8)*z2a;
z4v=z3a*6;
z5v=z2a*4;
H=[z11 -z22; -z22 z2a; z33 z3a; z55 z4v; -z55 z5v];

H1=[H]';
W=[100 0 0 0 0; 0 100 0 0 0; 0 0 75 0 0; 0 0 0 75 0; 0 0 0 0 75;]
G=H1*W*H;

z=[z1;z2;z3;z4;z5];
x=(inv(G))*H1*W*z;
zh=H*x;
z=[z1;z2;z3;z4;z5];
eh=z-zh;
fh=100*eh(1)^2+100*eh(2)^2+75*eh(3)^2+75*eh(4)^2+75*eh(5)^2;
k=3;
alphha=.01;
R=[.0100 0 0 0 0; 0 .0100 0 0 0; 0 0 .0133 0 0; 0 0 0 .0133 0; 0 0 0 0 .0133];
F=H*inv(G)*(H')*inv(R);
Rtemp=[diag(F)];

er1=eh(1)/sqrt((1-F(1,1))*100);
er2=eh(2)/sqrt((1-F(2,2))*100);
er3=eh(3)/sqrt((1-F(3,3))*75);
er4=eh(4)/sqrt((1-F(4,4))*75);
er5=eh(5)/sqrt((1-F(5,5))*75);
mprintf("for k=3 and alpha=.001 estimated value of function f is %f, which is greater than critical value of 11.35. therefore it contains some bad data\n",fh);
mprintf("standardized error are er1=%f , er2=%f, er3=%f, er4=%f, er5=%f and we can see that er4 is greater so it should be rejected\n ",er1,er2,er3,er4,er5);
H(4,:)=[];
R(4,:)=[];;
R(:,4)=[];
W(4,:)=[];
W(:,4)=[];
G1=H'*W*H;
z(4)=[];
xh1=inv(G1)*H'*W*z;
zh1=H*xh1;
eh1=z-zh1;
fh1=100*eh1(1)^2+100*eh1(2)^2+75*eh1(3)^2+75*eh1(4)^2;
mprintf("for k=2 and alpha=.001 estimated value of function f is %f, which is greater than critical value of 9.21. therefore the measurement data is inaccurate and need to be more precise\n",fh1);







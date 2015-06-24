//Example 30.2
clc
syms s K1 K2
Gc11=K1;
Gc22=K2;
A1=1;
A2=1/2;
R2=2;
R3=1;
//In this problem ,Gv is a unit diagonal matrix i.e.,
Gv1=1;
Gv2=1;
A=[-1/(R1*A1)-1/(R3*A1) 1/(A1*R1);1/(R1*A2) -1/(R2*A2)-1/(A2*R1)]
B=[1/A1 0;0 1/A2]
I=eye(2,2)
Gp=inv(s*I-A)*B
G11=Gp(1,1)
G12=Gp(1,2)
G21=Gp(2,1)
G22=Gp(2,2)
Gc12=-G12*Gv2*Gc22/(G11*Gv1)
Gc21=-G21*Gv1*Gc11/(G22*Gv2)
Gv=[Gv1 0;0 Gv2]
Gc=[Gc11 Gc12;Gc21 Gc22]
Go=Gp*Gv*Gc;
Go=simple(Go)
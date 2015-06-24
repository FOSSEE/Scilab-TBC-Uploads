//Example 30.3
clc
A1=1;
A2=1/2;
R1=1/2;
R2=2;
R3=1;
Gc11=K1;
Gc22=K2;
Gc12=0;
Gc21=0;
A=[-1/(R1*A1)-1/(R3*A1) 1/(A1*R1);1/(R1*A2) -1/(R2*A2)-1/(A2*R1)]
B=[1/A1 0;0 1/A2]
syms s;
I=eye(2,2)
Gp=inv(s*I-A)*B
G11=Gp(1,1)
G12=Gp(1,2)
G21=Gp(2,1)
G22=Gp(2,2)
Gv1=1;
Gv2=1;
Gm=I
Gv=[Gv1 0;0 Gv2]
Gc=[Gc11 Gc12;Gc21 Gc22]
Go=Gp*Gv*Gc;
Go=simple(Go)
//From Eq.(30.32)
P=det(I+Go*Gm)
disp('=0',simple(P))


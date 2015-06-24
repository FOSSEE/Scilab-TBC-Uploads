//Example 30.1
clc
A1=1;
A2=1/2;
R1=1/2;
R2=2;
R3=1;
A=[-1/(R1*A1)-1/(R3*A1) 1/(A1*R1);1/(R1*A2) -1/(R2*A2)-1/(A2*R1)]
B=[1/A1 0;0 1/A2]
syms s M1 M2;
I=eye(2,2)
Gp=inv(s*I-A)*B
G11=Gp(1,1)
G12=Gp(1,2)
G21=Gp(2,1)
G22=Gp(2,2)
M=[M1;M2]
Cs=inv(s*I-A)*B*M
M1=1/s;
M2=0;
Cs=eval(Cs)
M1=0;
M2=1/s;
Cs=eval(Cs)

clc
//initialization of variables
F=3500 //mol/hr
xf=0.4
x1=0.98
y1=0.97
y2=0.625
x1=0.97
x2=0.4
ratio=1.5
HTU=0.2
//calculations
A=[1 1;x1 1-x1]
B=[F;xf*F]
C=A\B
DA=C(1)
BA=C(2)
Rds=(y1-y2)/(x1-x2)
Rd=Rds/(1-Rds)
Rdreq=ratio*Rd
NTU=13.9
l=HTU*NTU
//results
printf("length of the tower = %.1f m",l)

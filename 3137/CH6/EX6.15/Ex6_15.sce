//Initilization of variables
W=138 //lb
w=80 //lb
//Calculations
u=sqrt(3*3+4*4+6*6)
a=[-3/u 4/u -6/u]
v=sqrt(3*3+3*3+3*3)
c=[3/v 3/v -3/v]
P=[1 0 0;0 0 8;0 -W 0]
Q=[0 0 1;0 0 8;0 -W 0]
R=[1 0 0;0 0 4;0 -w 0]
S=[0 0 1;0 0 4;0 -w 0]
T=[1 0 0;0 0 6;a(1) a(2) a(3)]
U=[0 1 0;0 0 6;a(1) a(2) a(3)]
V=[1 0 0;0 0 3;c(1) c(2) c(3)]
Y=[0 1 0;0 0 3;c(1) c(2) c(3)]
//Solving for A and C
MAT1=[det(T) det(V);det(U) det(Y)]
MAT2=[det(P)+det(R);0]
res=-inv(MAT1)*MAT2
A=[a(1)*res(1) a(2)*res(1) a(3)*res(1)]
C=[c(1)*res(2) c(2)*res(2) c(3)*res(2)]
E=[-(A(1)+C(1)) -(-w-W+A(2)+C(2)) -(A(3)+C(3))]
//Result
clc
printf('The force vectors are as follows\n')
printf('A=%fi+%fj%fk lb and C=%fi+%fj%fk lb also Ex=%f Ey=%flb Ez=%flb',A(1),A(2),A(3),C(1),C(2),C(3),E(1),E(2),E(3))
//Decimal accuracy causes discrepancy in the answers

clear;
clc;
y=[4 3 6;2 8 5;1 5 9];
nbus=3;
l11=4;
disp(y(1,2));
u12=(1/l11)*y(1,2);
u13=(1/l11)*y(1,3);
l21=2;
l22=y(2,2)-(l21*u12);
u23=(1/l22)*(y(2,3)-(l21*u13));
l31=1;
l32=y(3,2)-(l31*u12);
l21=2;
l33=y(3,3)-(l31*u13)-(l32*u23);
Yb=[l11 u12 u13; l21 l22 u23;l31 l32 l33];
mprintf("matrix for table of factor is\n")
disp(Yb);

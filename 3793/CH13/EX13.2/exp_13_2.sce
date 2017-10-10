clear;
clc;
Yb=[complex(1.14,-4.19) complex(-.59,2.35) complex(0,0) complex(-0.55,1.83);complex(-0.59,2.35) complex(3.76,-9.4) complex(-.77,3.85) complex(-2.4,3.2);complex(0,0) complex(-0.77,3.85) complex(1.77,-6.85) complex(-1,3);complex(-.55,1.83) complex(-2.4,3.2) complex(-1,3) complex(4.19,-8.03)];
v=[1.02 1 .98 1.04]';

Zb=inv(Yb);
Zbus=imag(Zb);

Z12={Zbus(1,1)-Zbus(1,2)-(Zbus(2,1)-Zbus(2,2))};
Z34={Zbus(3,3)-Zbus(3,4)-(Zbus(4,3)-Zbus(4,4))};
//case1
z11=Z12-.4;
z12=Zbus(1,3)-Zbus(1,4)-(Zbus(2,3)-Zbus(2,4));
z21=Zbus(3,1)-Zbus(3,2)-(Zbus(4,1)-Zbus(4,2));
z22=Z34-.3;
z=[z11 z12;z21 z22];
V=[(v(1,1)-v(2,1));(v(3,1)-v(4,1))];
Ic=inv(z)*V;
A=[1 -1 0 0;0 0 1 -1];
delV=-Zbus*A'*Ic;
VV=v+delV;
disp(z)

mprintf(" Bus voltages for case1 are\n");
disp(VV);
//case2
z11=Z12-.4;
z12=Zbus(1,3)-Zbus(1,4)-(Zbus(2,3)-Zbus(2,4));
z21=Zbus(3,1)-Zbus(3,2)-(Zbus(4,1)-Zbus(4,2));
z22=Z34+.3
z=[z11 z12;z21 z22];
V=[(v(1,1)-v(2,1));(v(3,1)-v(4,1))];
Ic=inv(z)*V;
A=[1 -1 0 0;0 0 1 -1];
delV=-Zbus*A'*Ic;
VV=v+delV;

mprintf(" Bus voltages for case2 are\n");
disp(VV);
//case3
z11=Z12+.4;
z12=Zbus(1,3)-Zbus(1,4)-(Zbus(2,3)-Zbus(2,4));
z21=Zbus(3,1)-Zbus(3,2)-(Zbus(4,1)-Zbus(4,2));
z22=Z34-.3;
z=[z11 z12;z21 z22];
V=[(v(1,1)-v(2,1));(v(3,1)-v(4,1))];
Ic=inv(z)*V;
A=[1 -1 0 0;0 0 1 -1];
delV=-Zbus*A'*Ic;
VV=v+delV;

mprintf(" Bus voltages for case3 are\n");
disp(VV);

clc;
clear;
format('v',6);
Ai=[0 0 0];                 //initial point.
Bf=[1 2 3];                 //final point.
B=[4 5 6];
I=10;
l=Bf-Ai;                  //l=length of the wire.
u1=l(1,2)*B(1,3)-l(1,3)*B(1,2);
u2=l(1,3)*B(1,1)-l(1,1)*B(1,3);
u3=l(1,1)*B(1,2)-l(1,2)*B(1,1);
R=[u1,u2,u3];                      //cross product of l and B.
F=I*R;
mag_F=sqrt(F(1)^2+F(2)^2+F(3)^2);
disp(F,"The force on the wire,F(in newton)=");
disp(mag_F,"The magnitude of the force(in newton)=");

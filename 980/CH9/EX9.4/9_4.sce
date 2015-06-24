clc;
clear;
format('e',11);
q=1*10^-9;
H=[1 0 0];
B=H*(4*3.14*10^-7);

//case-a

v=[0 0 0];
u1=v(1,2)*B(1,3)-v(1,3)*B(1,2);
u2=v(1,3)*B(1,1)-v(1,1)*B(1,3);
u3=v(1,1)*B(1,2)-v(1,2)*B(1,1);
R=[u1,u2,u3];                      //cross product of v and B.
F=q*R;
disp(F,"The force on the charge(in newton)=");

//case-b

v=[2 3 0];
u1=v(1,2)*B(1,3)-v(1,3)*B(1,2);
u2=v(1,3)*B(1,1)-v(1,1)*B(1,3);
u3=v(1,1)*B(1,2)-v(1,2)*B(1,1);
R=[u1,u2,u3];                      //cross product of v and B.
F=q*R;
disp(F,"The force on the charge(in newton)=");

clc;
c=[-1/8 3/4];
A=[0 1;-1/8 3/4];
y=[1;0];
//we know y=[c;c*A]*q0
Q0=inv([c;c*A])*y;
disp(Q0,"therefore [q1(0);q2(0)]=")
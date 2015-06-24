clc;
clear;
//the matrix or the system
b1=-0.01;
b2=0.67;
b3=-0.44;
a=[0.3 0.52 1;0.5 1 1.9;0.1 0.3 0.5];
a1=[a(2,2) a(2,3);a(3,2) a(3,3)];
A1=determ(a1);
a2=[a(2,1) a(2,3);a(3,1) a(3,3)];
A2=determ(a2);
a3=[a(2,1) a(2,2);a(3,1) a(3,2)];
A3=determ(a3);
D=a(1,1)*A1-a(1,2)*A2+a(1,3)*A3;
p=[b1 0.52 1;b2 1 1.9;b3 0.3 0.5];
q=[0.3 b1 1;0.5 b2 1.9;0.1 b3 0.5];
r=[0.3 0.52 b1;0.5 1 b2;0.1 0.3 b3];
x1=det(p)/D;
x2=det(q)/D;
x3=det(r)/D;
disp("The values are:")
disp(x1,"x1=")
disp(x2,"x2=")
disp(x3,"x3=")
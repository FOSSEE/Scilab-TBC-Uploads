//example 4.2
//least square curve fitting procedure
//page 129
clc;clear;close;
x=[0 2 5 7];
y=[-1 5 12 20];
for i=1:4
    x_2(i)=x(i)^2;
    xy(i)=x(i)*y(i);
end
printf('x\t     y\t     x^2\t     xy\t  \n\n');
S_x=0,S_y=0,S_x2=0,S_xy=0;
for i=1:4
printf('%d\t    %d\t    %d\t       %d\t\n',x(i),y(i),x_2(i),xy(i));
S_x=S_x+x(i);
S_y=S_y+y(i);
S_x2=S_x2+x_2(i);
S_xy=S_xy+xy(i);
end
printf('%d\t      %d\t    %d\t      %d\t\n',S_x,S_y,S_x2,S_xy);
A=[4,S_x;S_x,S_x2];
B=[S_y;S_xy];
C=(A)^-1*B;
printf('Best straight line fit Y=%.4f+x(%.4f)',C(1,1),C(2,1));
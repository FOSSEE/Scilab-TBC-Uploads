//example 4.6
//curve fitting by polynomial
//page 134
clc;clear;close;
x=[0 1 2];
y=[1 6 17];
for i=1:3
    x2(i)=x(i)^2;
    x3(i)=x(i)^3;
    x4(i)=x(i)^4;
    xy(i)=x(i)*y(i);
    x2y(i)=x2(i)*y(i);
end
printf('x\t   y\t   x^2\t   x^3\t   x^4\t   x*y\t   x^2*y\t\n\n');
S_x=0,S_y=0,S_x2=0,S_x3=0,S_x4=0,S_xy=0,S_x2y=0;
for i=1:3
    printf('%d\t   %d\t   %d\t   %d\t   %d\t   %d\t   %d\n',x(i),y(i),x2(i),x3(i),x4(i),xy(i),x2y(i));
    S_x=S_x+x(i);
    S_y=S_y+y(i);
    S_x2=S_x2+x2(i);
    S_x3=S_x3+x3(i);
    S_x4=S_x4+x4(i);
    S_xy=S_xy+xy(i);
    S_x2y=S_x2y+x2y(i);
end
printf('--------------------------------------------------------------------------------------------------------------------------------\n\n');
printf('%d\t   %d\t   %d\t   %d\t   %d\t   %d\t   %d\n',S_x,S_y,S_x2,S_x3,S_x4,S_xy,S_x2y);
A=[3,S_x,S_x2;S_x,S_x2,S_x3;S_x2,S_x3,S_x4];
B=[S_y;S_xy;S_x2y];
C=A^-1*B;
printf('a=%d  b=%d  c=%d \n\n',C(1,1),C(2,1),C(3,1));
printf('exact polynomial :%d + %d*x +%d*x^2',C(1,1),C(2,1),C(3,1))
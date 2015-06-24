//example 4.7
//curve fitting by polynomial
//page 134
clc;clear;close;
x=[1 3 4 6];
y=[0.63 2.05 4.08 10.78];
for i=1:4
    x2(i)=x(i)^2;
    x3(i)=x(i)^3;
    x4(i)=x(i)^4;
    xy(i)=x(i)*y(i);
    x2y(i)=x2(i)*y(i);
end
printf('x\t   y\t   x^2\t   x^3\t   x^4\t   x*y\t   x^2*y\t\n\n');
S_x=0,S_y=0,S_x2=0,S_x3=0,S_x4=0,S_xy=0,S_x2y=0;
for i=1:4
    printf('%d\t   %0.3f\t   %d\t   %d\t   %d\t   %0.3f\t   %d\n',x(i),y(i),x2(i),x3(i),x4(i),xy(i),x2y(i));
    S_x=S_x+x(i);
    S_y=S_y+y(i);
    S_x2=S_x2+x2(i);
    S_x3=S_x3+x3(i);
    S_x4=S_x4+x4(i);
    S_xy=S_xy+xy(i);
    S_x2y=S_x2y+x2y(i);
end
printf('----------------------------------------------------------------------------------------------------------------------------------------\n\n');
printf('%d\t   %0.3f\t   %d\t   %d\t   %d\t   %0.3f\t   %0.3f\n',S_x,S_y,S_x2,S_x3,S_x4,S_xy,S_x2y);
A=[4,S_x,S_x2;S_x,S_x2,S_x3;S_x2,S_x3,S_x4];
B=[S_y;S_xy;S_x2y];
C=A^-1*B;
printf('a=%0.2f  b=%0.2f  c=%0.2f \n\n',C(1,1),C(2,1),C(3,1));
printf('exact polynomial :%0.2f + %0.2f*x +%0.2f*x^2',C(1,1),C(2,1),C(3,1))
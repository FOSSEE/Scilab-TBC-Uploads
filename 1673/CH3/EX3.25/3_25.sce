//inverse intrpolation
//example 3.25
//page  118
clc;clear;close;
x=[2 3 4 5];
y=[8 27 64 125];
for i=1:3
    d1(i)=y(i+1)-y(i);
end
for i=1:2
    d2(i)=d1(i+1)-d1(i);
end
for i=1:1
    d3(i)=d2(i+1)-d2(i);
end
yu=10;//square rooot of 10
y0=y(1);
d=[d1(1) d2(1) d3(1)];
u1=(yu-y0)/d1(1);
u2=((yu-y0-u1*(u1-1)*d2(1)/2)/d1(1));
u3=(yu-y0-u2*(u2-1)*d2(1)/2-u2*(u2-1)*(u2-2)*d3(1)/6)/d1(1);
u4=(yu-y0-u3*(u3-1)*d2(1)/2-u3*(u3-1)*(u3-2)*d3(1)/6)/d1(1);
u5=(yu-y0-u4*(u4-1)*d2(1)/2-u4*(u4-1)*(u4-2)*d3(1)/6)/d1(1);
printf(' %f \n %f \n %f \n %f \n %f \n ',u1,u2,u3,u4,u5);
printf(' the approximate square root of %d is: %0.3f',yu,x(1)+u5)
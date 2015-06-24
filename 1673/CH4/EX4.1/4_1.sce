//example 4.1
//least square curve fitting procedure
//page 128
clc;clear;close;
x=[1 2 3 4 5];
y=[0.6 2.4 3.5 4.8 5.7];
for i=1:5
    x_2(i)=x(i)^2;
    x_y(i)=x(i)*y(i);
end
S_x=0,S_y=0,S_x2=0,S_xy=0,S1=0,S2=0;
for i=1:5
    S_x=S_x+x(i);
    S_y=S_y+y(i);
    S_x2=S_x2+x_2(i);
    S_xy=S_xy+x_y(i);
end
a1=(5*S_xy-S_x*S_y)/(5*S_x2-S_x^2);
a0=S_y/5-a1*S_x/5;
printf('x\t     y\t      x^2\t     x*y\t       (y-avg(S_y))\t(y-a0-a1x)^2\n\n');
for i=1:5
printf('%d\t    %0.2f\t    %d\t      %0.2f\t        %0.2f\t                     %.4f\t\n',x(i),y(i),x_2(i),x_y(i),(y(i)-S_y/5)^2,(y(i)-a0-a1*x(i))^2);
S1=S1+(y(i)-S_y/5)^2;
S2=S2+(y(i)-a0-a1*x(i))^2;
end
printf('---------------------------------------------------------------------------------------------------------------------------------------------\n\n');
printf('%d\t     %0.2f\t     %d\t      %0.2f\t     %0.2f\t                  %0.4f\t\n\n',S_x,S_y,S_x2,S_xy,S1,S2);
cc=sqrt((S1-S2)/S1);//correlation coefficient
printf('the correlation coefficient is:%0.4f',cc);

//Example 12.4
//Newton's Divided Difference Interpolation
//Page no. 381
clc;close;clear;

x=[0,1,2,3,4,5]
y=[1,2,5,10,17,26];
y1=y;
deff('yi=P(a,b,d,e)','yi=(b(d+1)-b(d))/(a(d+e)-a(d))')  //function for finding polynomials
for i=1:3
    for j=1:6-i
        z(j,i)=P(x,y,j,i)
         y(j)=z(j,i)
    end
end
z(6,1)=0;
printf('x    y      f(x0,x1)        f(x0,x1,x3)    f(x0,x1,x2,x3)\n')
printf('---------------------------------------------------------\n')
    for j=1:6
        printf(' %i    %i \t%i\t\t%i\t\t%i\n',x(1,j),y1(1,j),z(j,1),z(j,2),z(j,3))
    end
x1=2.6;
f=y1(4)+(x1-x(4))*(z(4,1))+(x1-x(4))*(x1-x(5))*z(4,2)
printf('\n\nf(2.6)=%.2f',f)
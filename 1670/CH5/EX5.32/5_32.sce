//Example 5.32
//Divided Difference Interpolation
//Page no. 170
clc;close;clear;

x=[0,1,2,4]
y=[1,3,9,81];
y1=y;
deff('yi=P(a,b,d,e)','yi=(b(d+1)-b(d))/(a(d+e)-a(d))')  //function for finding polynomials
for i=1:4
    for j=1:4-i
        z(j,i)=P(x,y,j,i)
         y(j)=z(j,i)
    end
end
z(6,1)=0;
printf('x\ty      f(x0,x1)     f(x0,x1,x3)    f(x0,x1,x2,x3)\n')
printf('-----------------------------------------------------------\n')
    for j=1:3
        printf(' %i\t%i \t%i\t\t%i\t\t%i\t\t\n',x(1,j),y1(1,j),z(j,1),z(j,2),z(j,3))
    end
    deff('y=f(x1)','y=y1(1)+(x1-x(1))*z(1,1)+(x1-x(1))*(x1-x(2))*z(1,2)+(x1-x(1))*(x1-x(2))*(x1-x(3))*z(1,3)')
    printf('\n\nf(3) = %g',f(3))
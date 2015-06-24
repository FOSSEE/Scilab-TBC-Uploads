//Example 5.29
//Divided Difference Interpolation
//Page no. 167
clc;close;clear;

x=[4,5,7,10,11,13]
y=[48,100,294,900,1210,2028];
y1=y;
deff('yi=P(a,b,d,e)','yi=(b(d+1)-b(d))/(a(d+e)-a(d))')  //function for finding polynomials
for i=1:6
    for j=1:6-i
        z(j,i)=P(x,y,j,i)
         y(j)=z(j,i)
    end
end
z(6,1)=0;
printf('x\ty      f(x0,x1)     f(x0,x1,x3)    f(x0,x1,x2,x3)    f(x0,x1,x2,x3,x4)\n')
printf('---------------------------------------------------------------------------------\n')
    for j=1:5
        printf(' %i\t%i \t%i\t\t%i\t\t%i\t\t     %i     %i\n',x(1,j),y1(1,j),z(j,1),z(j,2),z(j,3),z(j,4),z(j,5))
    end
    deff('y=f(x1)','y=y1(1)+(x1-x(1))*z(1,1)+(x1-x(1))*(x1-x(2))*z(1,2)+(x1-x(1))*(x1-x(2))*(x1-x(3))*z(1,3)')
    printf('\n\nf(8) = %g',f(8))
    printf('\n\nf(15) = %i',f(15))
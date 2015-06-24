//Example 7.11
//Newton's Divided Difference Interpolation
//Page no. 247
clc;close;clear;

x=[-1,1,2,3]
y=[-21,15,12,3];
y1=y;h=0.0000001
deff('yi=P(a,b,d,e)','yi=(b(d+1)-b(d))/(a(d+e)-a(d))')  //function for finding polynomials
for i=1:3
    for j=1:4-i
        z(j,i)=P(x,y,j,i)
         y(j)=z(j,i)
    end
end
z(6,1)=0;
printf('x    y      f(x0,x1)        f(x0,x1,x3)    f(x0,x1,x2,x3)\n')
printf('---------------------------------------------------------\n')
    for j=1:4
        printf(' %i    %i \t%i\t\t%i\t\t%i\n',x(1,j),y1(1,j),z(j,1),z(j,2),z(j,3))
    end
x1=poly(0,'x');
p=1;f=y1(1);
for i=1:3
    for j=1:i
        p=p*(x1-x(j))
    end
    p=p*z(1,i)
    f=f+p
    p=1;
end
disp(f,"f(x) = ")
f1=y1(1)
x2=poly(h,'x');
for i=1:3
    for j=1:i
        p=p*(x2-x(j))
    end
    p=p*z(1,i)
    f1=f1+p
    p=1;
end
f1=(f1-f)/h
disp(f1,"f`(x) = ")
r=roots(f1)
disp(r,"Roots = ")
x1=r(2)
p=1;f=y1(1);
for i=1:3
    for j=1:i
        p=p*(x1-x(j))
    end
    p=p*z(1,i)
    f=f+p
    p=1;
end
disp(f,"Maximum Value = ")
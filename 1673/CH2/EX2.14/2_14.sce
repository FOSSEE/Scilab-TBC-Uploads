//example 2.14
//aitken's process
//page 36
clc,clear,close
deff('x=f(x)','x=(3+cos(x))/2');
x0=1.5;
y=0;
e=0.0001;
c=0;
printf('successive iterations     \tx0\t      x1\t   x2\t      x3\t    y\n')
for i=1:10
    x1=f(x0),x2=f(x1),x3=f(x2);
    y=x3-((x3-x2)^2)/(x3-2*x2+x1);
    d=y-x0;
    x0=y;
    if abs(f(x0))<e then
        break;
    end
    c=c+1;
printf('                          \t%f   %f   %f   %f   %f\n',x0,x1,x2,x3,y)
end
printf('the root of the equation after %i iteration is %f',c,y);


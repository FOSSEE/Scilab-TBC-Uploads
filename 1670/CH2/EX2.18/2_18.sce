//Example 2.18
//Newton Raphshon Method for simultaneous equations
//Page no. 33
clc;clear;close;

deff('y=f1(x,y)','y=x+3*log10(x)-y^2');
deff('y=f2(x,y)','y=2*x^2-x*y-5*x+1');
h=0.01;
function u=f3(x,y,z)
    if z==1 then
        u=(f1(x+h,y)-f1(x,y))/h
    elseif z==2
        u=(f1(x,y+h)-f1(x,y))/h
    elseif z==3
        u=(f2(x+h,y)-f2(x,y))/h
    else
        u=(f2(x,y+h)-f2(x,y))/h
    end
endfunction
x=3.4;y=2.2;
for i=1:4
    printf('\n\tx%i = %g\t\ty%i = %g\n',i-1,x,i-1,y)
    printf('\nfi(x0,y0) = %g',f1(x,y));
printf('\nomega(x0,y0) = %g',f2(x,y));
printf('\nd(fi)/dx = %g',f3(x,y,1));
printf('\nd(fi)/dy = %g',f3(x,y,2));
printf('\nd(omega)/dx = %g',f3(x,y,3));
printf('\nd(omega)/dy = %g',f3(x,y,4));
A=[f3(x,y,1),f3(x,y,2);f3(x,y,3),f3(x,y,4)];
B=[-f1(x,y);-f2(x,y)];
C=inv(A)*B;
x=x+C(1);
y=y+C(2);
printf('\n\n\th%i = %g\t\tk%i = %g\n\n',i,C(1),i,C(2));
end
printf('\n\tx%i = %g\t\ty%i = %g\n\n\n\nNote : Computational Errors in Book',i,x,i,y)
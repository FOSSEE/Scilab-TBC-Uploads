//Example 2.19
//Newton Raphshon Method for simultaneous equations
//Page no. 35
clc;clear;close;

deff('y=f1(x,y)','y=1+x^2-y^2');
deff('y=f2(x,y)','y=2*x*y');
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
x=0.5;y=0.5;
for i=1:3
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
printf('\n\tx%i = %g\t\ty%i = %g\n',i,x,i,y)
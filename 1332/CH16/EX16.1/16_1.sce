//Example 16.1
//Outline of Linear Shooting Method
//Page no. 572
clc;close;clear;

deff('y=f(x)','y=x^2');
h=0.5;X0=0;Y0=1;Z1=[-1,-1.5,-1.1771];i=1;Y1=Y0;
for j=1:3
    Z0=Z1(i);
    i=i+1
    Y0=1;
    for n=1:2
        printf('\nFor n = %i\n---------------------------\n',n-1)
        K1(1)=h*Z0;
        printf('\n K11 = %g',K1(1));
        K1(2)=h*f(Y0);
        printf('\n K12 = %g',K1(2));
        K2=h*f(Y0+K1(2))
        printf('\n K22 = %g',K2);
        Z0=Z0+(K1(2)+K2)/2
        printf('\n Z%i = %g',n,Z0);
        K2=h*Z0;
        printf('\n K21 = %g',K2);
        Y0=Y0+(K1(1)+K2)/2
        printf('\n Y%i = %g',n,Y0);
        printf('\n\n\n')
        if n==1 then
            Y2=Y0
        end
    end
    printf('\n\n\n')
end
printf('Hence the solution is y(%g) = %i, y(%g) = %.4f   and  y(%g) = %.1f',X0,Y1,X0+h,Y2,X0+2*h,Y0)
//Example 5.43
//Inverse Interpolation using Newton's Forward Difference Formula
//Page no. 189
clc;close;clear;
printf(' \tx\ty\td\td2\td3\n')
printf('\t-----------------------------------')
h=1;
z=[2,8;3,27;4,64;5,125];
deff('y=f1(x,s)','y=(z(x,3)+(s-1/2)*z(x,4)+z(x,5)*(3*s^2-6*s+2)/6)/h')
deff('y=f2(x,s)','y=(z(x,4)+z(x,5)*(s-1))/h^2')
deff('y=f3(x,s)','y=z(x,5)/h^3')
for i=3:5
    for j=1:6-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:4
    for j=1:5
        if z(i,j)==0 then
            printf(' \t')
        else
            printf('\t%g',z(i,j))
        end
    end
    printf('\n')
end
fp=10;
f0=z(1,2);x0=z(1,1);x=fp-f0;p=(z(2,1)-z(1,1))/h;y=0;k=1;p=1;
for i=1:5
    if i>3 then
        l=3;
    else
        l=i;
    end
    for j=1:l
        for k=j:-1:2
            if k==j then
                y=1;
            end
            y=y*(p-(k-1))
        end
        y=y*z(1,j+2)*p/factorial(j);
        x=x-y;
    end
    p=(x)/z(1,3)
    x=fp-f0;y=0;
    printf('\n  p%i = %g\n',i,p)
end
printf('\n\n  Hence, x = x0+ph = %g ',x+p*h)
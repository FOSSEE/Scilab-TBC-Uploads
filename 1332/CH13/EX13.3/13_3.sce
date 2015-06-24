//Example 13.3
//Newton's Forward Difference Formula
//Page no. 423
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\t\t    d4\n')
printf('------------------------------------------------------------------------------------------')
h=0.05;
z=[1.00,1.00000;1.05,1.02470;1.10,1.04881;1.15,1.07238;1.20,1.09544;1.25,1.11803;1.30,1.14018]
deff('y=f1(x,s)','y=(z(x,3)+(s-1/2)*z(x,4)+z(x,5)*(3*s^2-6*s+2)/6)/h')
deff('y=f2(x,s)','y=(z(x,4)+z(x,5)*(s-1))/h^2')
deff('y=f3(x,s)','y=z(x,5)/h^3')
for i=3:6
    for j=1:9-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:7
    for j=1:6
        if z(i,j)==0 then
            printf(' \t')
        else
            printf('%.7f\t',z(i,j))
        end
    end
    printf('\n')
end
s=poly(0,'s')
p=z(5,2);k=4;
for i=3:5
    r=1;
    for j=1:i-2
        r=r*(s+(j-1))
    end
    r=r*z(k,i)/factorial(j);
    k=k-1;
    p=p+r;
    
end
disp(p,'y(s) = ')
printf('\n\ny1(1) = %g',f1(1,0))
printf('\n\ny2(1) = %g',f2(1,0))
printf('\n\ny3(1) = %g',f3(1,0))
printf('\n\ny1(1.025) = %g',f1(1,0.5))
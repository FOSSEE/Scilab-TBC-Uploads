//Example 7.6
//Stirlings Central Difference Derivatives
//Page no. 239
clc;close;clear;
printf('   x\t\t    y\t\t    d\t\t    d2\t\t    d3\t\t    d4\t\t    d5\n')
printf('----------------------------------------------------------------------------------------------------------')
h=0.2;s=1;
deff('y=f1()','y=(z(4,3)+(3*p^2-1)*z(4,4)/factorial(3)-(3*p^2-6*p+2)*z(3,4)/factorial(3))/h')
z=[0.2,2.10022;0.4,1.98730;0.6,1.90940;0.8,1.86672;1,1.85937;1.2,1.88737;1.4,1.95063];
x0=0.8;p=poly(0,'p');
for i=3:7
    for j=1:9-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:7
    for j=1:7
        if z(i,j)==0 then
            printf(' \t')
        elseif j==1
            printf('   %.1f\t\t',z(i,j))
        else
            printf('%.6f\t',z(i,j))
        end
    end
    printf('\n')
end
f1p=f1()
disp(f1p)
r=roots(f1p);
for i=1:2
    if abs(r(i))==r(i) then
        r1=r(i)
        disp(r(i),"p = ")
    end
end
x=x0+r1*h;
disp(x,"x = ")
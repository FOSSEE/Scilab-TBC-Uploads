//Example 5.19
//Horner Method
//Page no. 177
clc;clear;close;
deff('y=f(x,a1,a2,a3,a4)','y=a1*x^3+a2*x^2+a3*x+a4')

k=1;m=2;
a=[4;-13;-31;-275];
for i=1:10
    s=1;
    si=f(s,a(1),a(2),a(3),a(4))*abs(1/f(s,a(1),a(2),a(3),a(4)))
    while 1
        a1=f(s,a(1),a(2),a(3),a(4))*abs(1/f(s,a(1),a(2),a(3),a(4)))
        if si~=a1 then
            d(i)=s-1
            break
        end
        si=a1;
        s=s+1;
    end 
    b(1)=a(1)
    for j=1:3
        for k=1:4-j
            b(k+1)=a(k+1)+b(k)*d(i)
            a(k+1)=b(k+1)
        end
    end
    for j=1:3
        a(j+1)=10^j*a(j+1)
    end
end
printf('The positive root is %i.',d(1))
for i=2:10
    printf('%i',d(i))
end
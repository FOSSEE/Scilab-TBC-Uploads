//Example 2.25
//Mullers Method
//Page no. 43
clc;clear;close;

deff('y=f(x)','y=cos(x)-x*exp(x)')
zi=[-1;0;1];
s=["i","z2","z0","z1","f2","f0","f1","a0","a1","a2","zr+","zr-"]
li(1)=(zi(3,1)-zi(2,1))/(zi(2,1)-zi(1,1))
hi(1)=zi(3,1)-zi(2,1);
for i=2:7
    for j=1:3
       fz(j,i-1)=f(zi(j,i-1))
    end
    di(i-1)=1+li(i-1)
    gi(i-1)=fz(1,i-1)*li(i-1)^2-fz(2,i-1)*di(i-1)^2+fz(3,i-1)*(li(i-1)+di(i-1))
    D1(i-1)=gi(i-1)+sqrt(gi(i-1)^2-4*fz(3,i-1)*di(i-1)*li(i-1)*(fz(1,i-1)*li(i-1)-fz(2,i-1)*di(i-1)+fz(3,i-1)))
    D2(i-1)=gi(i-1)-sqrt(gi(i-1)^2-4*fz(3,i-1)*di(i-1)*li(i-1)*(fz(1,i-1)*li(i-1)-fz(2,i-1)*di(i-1)+fz(3,i-1)))
    if abs(D1(i-1))>abs(D2(i-1)) then
        li(i)=-2*fz(3,i-1)*di(i-1)/D1(i-1)
    else
        li(i)=-2*fz(3,i-1)*di(i-1)/D2(i-1)
    end
    hi(i)=li(i)*hi(i-1);
    z(i-1)=zi(3,i-1)+hi(i)
    for j=1:2
        zi(j,i)=zi(j+1,i-1)
    end
    zi(3,i)=z(i-1)
end
for i=1:12
    if i==1 then
        printf(s(i))
        for j=1:6
            printf('\t\t\t%i',j-1)
        end
    elseif i<=4
        printf('\n %s',s(i))
        for j=1:6
            printf('\t\t%.10f',zi(i-1,j))
        end
    elseif i<=7
        printf('\n %s',s(i))
        for j=1:6
            printf('\t\t%.10f',fz(i-4,j))
        end
    elseif i<=8
        printf('\n %s',s(i))
        for j=1:6
            printf('\t\t%.10f',li(j))
        end
    elseif i<=9
        printf('\n %s',s(i))
        for j=1:6
            printf('\t\t%.10f',di(j))
        end
    elseif i<=10
        printf('\n %s',s(i))
        for j=1:6
            printf('\t\t%.10f',gi(j))
        end
    elseif i<=11
        printf('\n %s',s(i))
        for j=1:6
            printf('\t\t%.10f',z(j))
        end
    elseif i<=12
        printf('\n %s',s(i))
        for j=1:6
            printf('\t\t%.10f',zi(j))
        end
    end
end
printf('\n\nAt the end of the %i iteration, the root of the equation is %.10f',j-2,z(j))
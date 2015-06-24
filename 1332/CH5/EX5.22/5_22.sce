//Example 5.22
//Mullers Method
//Page no. 183
clc;clear;close;

deff('y=f(x)','y=x^3-x-4')
zi=[1;2;3];
s=["i","z0","z1","z2","f0","f1","f2","li","di","gi","li+1","hi","hi+1","zi+1","D+","D_"]
li(1)=(zi(3,1)-zi(2,1))/(zi(2,1)-zi(1,1))
hi(1)=zi(3,1)-zi(2,1);
for i=2:6
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
for i=1:16
    if i==1 then
        printf(s(i))
        for j=1:5
            printf('\t\t\t%i',j-1)
        end
    elseif i<=4
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',zi(i-1,j))
        end
    elseif i<=7
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',fz(i-4,j))
        end
    elseif i<=8
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',li(j))
        end
    elseif i<=9
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',di(j))
        end
    elseif i<=10
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',gi(j))
        end
    elseif i<=11
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',li(j+1))
        end
    elseif i<=12
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',hi(j))
        end
        elseif i<=13
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',hi(j+1))
        end
        elseif i<=14
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',z(j))
        end
        elseif i<=15
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',D1(j))
        end
        elseif i<=16
        printf('\n %s',s(i))
        for j=1:5
            printf('\t\t%.10f',D2(j))
        end
    end
end
printf('\n\nAt the end of the %ith iteration, the root of the equation is %.10f',j-1,z(j))
//Example 5.32
//Regula Falsi, Newton Raphson and Mullers Method
//Page no. 201
clc;clear;close;
deff('x=f(x)','x=x^5-3.7*x^4+7.4*x^3-10.8*x^2+10.8*x-6.8')
deff('x=f1(x)','x=5*x^4-4*3.7*x^3+3*7.4*x^2-21.6*x+10.8')
//newton raphson
printf('n\txn\t\t\f(xn)\t\tf1(xn)\t\tXn+1\t\tError\n')
printf('-----------------------------------------------------------------------------------------------------\n')
x0=1.5;e=0.00001
for i=1:4
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    printf(' %i\t%.10f\t%.10f\t%.10f\t%.10f\t%.10f\n',i-1,x0,f(x0),f1(x0),x1,e1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\n\nThe solution of this equation by newton raphshon after %i Iterations is %.10f\n\n\n',i,x1)

//regula falsi
x1=1;x2=2;e=0.00001
printf('n\tx1\t\tf(x1)\t\tx2\t\tf(x2)\t\tx3\t\tf(x3)')
printf('\n-------------------------------------------------------------------------------------------------\n')
for i=0:7
    x3=x2*f(x1)/(f(x1)-f(x2))+x1*f(x2)/(f(x2)-f(x1))
    printf(' %i\t%f\t%f\t%f\t%f\t%f\t%f\n',i,x1,f(x1),x2,f(x2),x3,f(x3))
    if f(x1)*f(x3)>0 then
        x1=x3
    else
        x2=x3
    end
    if abs(f(x3))<e then
        break
    end
end
printf('\n\nTherefore the solution by regula falsi method after %i iterations is %.10g',i,x3)

//mullers method
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
printf('\n\n ')
for i=1:16
    if i==1 then
        printf(s(i))
        for j=1:5
            printf('\t\t\t %i',j-1)
        end
        printf('\n----------------------------------------------------------------------------------------------------------------------------------')
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
printf('\n\nAt the end of the %ith iteration by mullers method, the root of the equation is %.10f',j-1,z(j))
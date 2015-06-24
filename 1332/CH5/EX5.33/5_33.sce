//Example 5.33
//Newton Raphson and Mullers Method
//Page no. 202
clc;clear;close;
deff('x=f(x)','x=x^4-8*x^3+18*x^2+0.12*x-24.24')
deff('x=f1(x)','x=4*x^3-24*x^2+36*x+0.12')

//newton raphson
x9=[1.5,2.5,2.7,3.1;4,5,14,10]
for h=1:4
    x0=x9(1,h);e=0.00001
for i=1:x9(2,h)
    x1=x0-f(x0)/f1(x0)
    e1=abs(x0-x1)
    x0=x1;
    if abs(x0)<e then
        break;
    end
end
printf('\nThe solution of this equation by newton raphshon after %i Iterations is %.5f\n',i,x1)
end

//mullers method
zx=[1,2,2.7,3.1;2,3,3.7,4.1;3,4,4.7,5.1]
zi=[1;2;3];
s=["i","z0","z1","z2","f0","f1","f2","li","di","gi","li+1","hi","hi+1","zi+1","D+","D_"]
li(1)=(zi(3,1)-zi(2,1))/(zi(2,1)-zi(1,1))
hi(1)=zi(3,1)-zi(2,1);
for i=2:4
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
printf('\n\nAt the end of the %ith iteration by mullers method, the root of the equation is %.10f',j+2,z(j))
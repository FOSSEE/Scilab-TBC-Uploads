//Example 12.8
//Spline Interpolation
//Page no. 414
clc;close;clear;

xi=[0.10,0.11,0.12,0.13,0.14,0.15,0.16,0.17];
yi=[0.1110,0.1234,0.1361,0.1491,0.1623,0.1759,0.1897,0.2038];
h=0.01;

pi(1)=0;qi(1)=0;pi(8)=0;qi(8)=0;
for i=2:7
    pi(i)=-1/(4+pi(i-1))
    qi(i)=((6/h^2)*(yi(i+1)-2*yi(i)+yi(i-1))-qi(i-1))/(4+pi(i-1))
end
si2(8)=0;
si2(1)=0;si1(8)=0;
si1(1)=0;
for i=7:-1:2
    si2(i)=pi(i)*si2(i+1)+qi(i)
end
for i=2:8
    si1(i)=si1(i-1)+h*(si2(i)+si2(i-1))/2
end
printf('\n i\t xi\t fi\t   pi\t\t   qi\t\t  si2\t\t  si1')
printf('\n---------------------------------------------------------------------------------')
for i=1:8
    printf('\n %i\t%g\t%g\t%f\t%f\t%f\t%f',i,xi(i),yi(i),pi(i),qi(i),si2(i),si1(i))
end
x=0.1325;
i=4;
s=yi(i)+(x-xi(i))*si1(i)+(si2(i)*(x-xi(i))^2)/2+((si2(i+1)-si2(i))/(xi(i+1)-xi(i)))*((x-xi(i))^3)/6
printf('\n\nSpline Interpolated Value of s(0.1325) is : %f',s)
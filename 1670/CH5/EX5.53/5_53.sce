//Example 5.53
//Spline Interpolation
//Page no. 206
clc;close;clear;

xi=[1,2,3];
yi=[-3,4,23];
h=1;n=2;
x=poly(0,'x')
m(2)=(6*(yi(3)-2*yi(2)+yi(1)))/4
m(1)=0;m(3)=0;
function [y]=S(i,x)
    y=m(i)*(xi(i+1)-x)^3/(6*h)
    y=y+m(i+1)*(x-xi(i))^3/(6*h)
    y=y+(yi(i)/h-(m(i)*h)/6)*(xi(i+1)-x)
    y=y+(yi(i+1)/h-(m(i+1)*h)/6)*(-xi(i)+x)
endfunction
for i=1:2
    S1(i)=S(i);
end
printf('\n The required Spline is : \n')
disp(' ','2<x<=3',S1(2),'S2 = ',' ','1<=x<=2',S1(1),'S1 = ');
x=1.5;
if x>=1 & x<=2 then
    i=1;
else x>2 & x<=3
    i=2;
end
disp(S(i,x),'y(1.5) = ')
x=1;h1=0.01;
for i=1:1
   Sd(i,x)=(S(i,x+h1)-S(i,x))/h1 
end
disp(Sd(1,1),'y`(1) = ')
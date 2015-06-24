//Example 5.54
//Spline Interpolation
//Page no. 207
clc;close;clear;

xi=[0,1,2,3];
yi=[1,-1,-1,0];
h=1;n=3;
x=poly(0,'x')
m=[4,1;1,4];
mb=[12;6];
m=inv(m)*mb
m(3)=m(2);
m(2)=m(1);
m(1)=0;m(4)=0;
function [y]=S(i,x)
    y=m(i)*(xi(i+1)-x)^3/(6*h)
    y=y+m(i+1)*(x-xi(i))^3/(6*h)
    y=y+(yi(i)/h-(m(i)*h)/6)*(xi(i+1)-x)
    y=y+(yi(i+1)/h-(m(i+1)*h)/6)*(-xi(i)+x)
endfunction
for i=1:3
    S1(i)=S(i);
end
printf('\n The required Spline is : \n')
disp(' ',S1(3),'S3 = ',' ',S1(2),'S2 = ',' ',S1(1),'S1 = ');
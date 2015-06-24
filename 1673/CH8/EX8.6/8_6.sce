//example 8.6
//error estimates in euler's 
//page 308
clc;clear;close;
deff('z=f(y)','z=-y')
y(1)=1;//value at 0
h=0.01;c=0.01;
for i=1:4
    y(i+1)=y(i)+h*f(y(i))
    printf ('\ny(%g)=%g\n',c,y(i+1));
    c=c+0.01;
end
for i=1:4
    L(i)=abs(-(1/2)*h^2*y(i+1));
    printf('L(%d) =%f\n\n',i,L(i))
end
e(1)=0;
for i=1:4
    e(i+1)=abs(y(2)*e(i)+L(1));
    printf('e(%d)=%f\n\n',i,e(i))
end
Actual_value=exp(-0.04);
Estimated_value=y(5);
err=abs(Actual_value-Estimated_value);
if err<e(5) then
    disp(' VERIFIED');
end



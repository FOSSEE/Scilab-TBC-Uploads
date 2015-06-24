//Example 15.22
//Linear Multi Step Method
//Page no. 540
clc;clear;close;
deff('y=f(x,y)','y=x+y')
y(1)=1;y(2)=1;x(1)=0;h=0.1;
printf('n\tXn\t\tYn\t\tfn\n-----------------------------------------------\n 0\t%g\t\t%.3f\t\t%.3f\n',x(1),y(1),f(x(1),y(1)));
for i=2:11
    x(i)=(i-1)*h;
    y(i+1)=(-y(i)-y(i-1)+h*(f(x(i),y(i))+f(x(i-1),y(i-1))))/2;
    printf(' %i\t%.3f\t\t%.3f\t\t%.3f\n',i-1,x(i),y(i),f(x(i),y(i)))
end
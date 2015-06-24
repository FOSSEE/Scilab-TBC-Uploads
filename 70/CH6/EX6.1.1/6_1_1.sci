//313
clear;
close;
clc;
disp('f(x,y)=x^2-10*x*y+y^2');
a=1;
c=1;
deff('[f]=f(x,y)','f=x^2-10*x*y+y^2');
disp(f(1,1),'f(1,1)=');
disp('The conditions a>0 and c>0 ensure that f(x,y) is positive on the x and y axes. But this function is negative on the line x=y,because b=-10 overwhelms a and c. ');
//end
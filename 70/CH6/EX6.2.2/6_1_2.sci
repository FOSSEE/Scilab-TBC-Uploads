//313
clear;
close;
clc;
disp('f(x,y)=x^2+4*x*y+y^2');
a=1;
c=1;
deff('[f]=f(x,y)','f=x^2+4*x*y+y^2');
disp(f(0,0),'f(0,0)=')
disp('Here 2b=4  it still does not ensure a minimum ,the sign of b is of no importance.Neither F nor f has a minimum at(0,0) because f(1,-1)=-1.')
//end
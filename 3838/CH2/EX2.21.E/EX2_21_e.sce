//EXAMPLE 2.21.E
clc;
x1=100;
x=integrate('1','t',-2,x1);
y=integrate('1','t',2,x1);
disp(x);
disp('valid for t>=-2 to t<=2');
disp(x+y);
disp('valid for t>=2');

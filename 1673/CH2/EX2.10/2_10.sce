//example 2.10
//iteration method
//page 33
clc;clear,close;
deff('x=f(x)','x=1/(sqrt(x+1))');
x1=0.75,x2=0;
n=1;
d=0.0001;// accuracy opto 10^-4
c=0;// to count no of iterations 
printf('successive iterations \t\x1\tf(x1)\n')
while abs(x1-x2)>d
printf('                      \t%f    %f\n',x1,f(x1))
x2=x1;
x1=f(x1);
c=c+1;
end
printf(' the root of the eqaution after %i iteration is %0.4g',c,x1)
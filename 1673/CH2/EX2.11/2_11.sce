//example 2.11
//iteration method
//page34
clc;clear,close;
deff('x=f(x)','x=(cos(x)+3)/2');
x1=1.5;// as roots lies between 3/2 and pi/2
x2=0;
d=0.0001;// accuracy opto 10^-4
c=0;// to count no of iterations 
printf('successive iterations \t\x1\tf(x1)\n')
while abs(x2-x1)>d
printf('                      \t%f    %f\n',x1,f(x1))
x2=x1;
x1=f(x1);
c=c+1;
end
printf(' the root of the eqaution after %i iteration is %0.4g',c,x1)
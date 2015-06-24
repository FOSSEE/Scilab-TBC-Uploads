//Example 15.24
//Improved Milne Simpson Predictor Corrector Method
//Page no. 546
clc;clear;close;

deff('y=f(x,y)','y=y-x^2')
y(1)=1;h=0.25;x=0;
printf('n\tXn\tYn\tfn\tY`n\tYn\tY`n+1\tm(n+1)\tv(n+1)\n------------------------------------------------------------------------\n')
f1(1)=f(x,y(1));
for i=1:3
    K1=h*f(x,y(i));
    K2=h*f(x+2*h/3,y(i)+2*K1/3);
    y(i+1)=y(i)+(K1+3*K2)/4
    printf(' %i\t%.3f\t%.3f\t%.3f\n',i-1,x,y(i),f1(i))
    x=x+h
    f1(i+1)=f(x,y(i+1))
end
Y31=0
for i=3:10
    Y41=y(i-2)+4*h*(2*f1(4)-f1(3)+2*f1(2))/3      //predictor
    m4=Y41+28*(y(i+1)-Y31)/29   //modifier
    v4=f(x+h,m4)     //evaluator
    Y4=y(i)+h*(v4+4*f1(4)+f1(3))/3       //corrector
    printf(' %i\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\n',i,x,y(i+1),f1(4),Y31,y(i+1),Y41,m4,v4)
    y(i+2)=Y4
    Y31=Y41;
    f1(2)=f1(3);
    f1(3)=f1(4);
    f1(4)=f(x+h,y(i+2))
    x=x+h
end

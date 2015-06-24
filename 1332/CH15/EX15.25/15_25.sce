//Example 15.25
//Hamming Predictor Corrector Method
//Page no. 548
clc;clear;close;

deff('y=f(x,y)','y=y-x^2')
y(1)=1;h=0.25;x=0;
printf('n\tXn\tYn\tfn\tY`n\tYc(n)\tY`n+1\tm(n+1)\tv(n+1)\tYc(n+1)\n-----------------------------------------------------------------------------------------\n')
f1(1)=f(x,y(1));
for i=1:3
    K1=h*f(x,y(i));
    K2=h*f(x+2*h/3,y(i)+2*K1/3);
    y(i+1)=y(i)+(K1+3*K2)/4
    printf(' %i\t%.3f\t%.3f\t%.3f\n',i-1,x,y(i),f1(i))
    x=x+h
    f1(i+1)=f(x,y(i+1))
end
Y31=y(4);Yc=0
for i=3:10
    Y41=y(i-2)+4*h*(2*f1(4)-f1(3)+2*f1(2))/3  //predictor
    m4=Y41+112*(Y31-Yc)/121    //modifier
    v4=f(x+h,m4)            //evaluator
    Y4c=(9*y(i+1)-y(i-1))/8+3*h*(v4+2*f1(4)-f1(3))/8     //corrector
    Y4=Y4c+9*(Y41-Y4c)/121        //final value
    printf(' %i\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\n',i,x,y(i+1),f1(4),Y31,Yc,Y41,m4,v4,Y4c)
    y(i+2)=Y4
    Y31=Y41;
    f1(2)=f1(3);
    f1(3)=f1(4);
    f1(4)=f(x+h,y(i+2))
    Yc=Y4c
    x=x+h
end

//Example 15.23
//Milne Simpson Predictor Corrector Method
//Page no. 544
clc;clear;close;
deff('y=f(x,y)','y=y+exp(x)')
h=0.5;
y=[1,1.824,3.718,7.722]
for i=1:4
    x=(i-1)*h;
    f1(i)=f(x,y(i));
    printf('\nf%i = %g',i-1,f1(i))
end
y41=y(1)+4*h*(2*f1(4)-f1(3)+2*f1(2))/3
f4=f(x+h,y41);
y4=y(3)+h*(f4+4*f1(4)+f1(3))/3
printf('\n\n\nPredictor = %.9f\n\n',y41)
printf('Evaluator = %.9f\n\n',f4)
printf('Corrector = %.9f',y4)
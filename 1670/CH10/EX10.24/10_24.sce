//Example 10.24
//Milne Simpson Predictor Corrector Method
//Page no. 339
clc;clear;close;
deff('y=f11(x,y)','y=1+x*y^2')
h=0.1;
y=[1,1.105,1.223,1.355]
for i=1:5
    x(i)=(i-1)*h
end
i=5;
    y(i)=y(i-4)+4*h*(2*f11(x(i-1),y(i-1))-f11(x(i-2),y(i-2))+2*f11(x(i-3),y(i-3)))/3
    printf('\nPredictor y(%g) = %.9f\n\n',x(i),y(i))
    y(i)=y(i-2)+h*(f11(x(i-2),y(i-2))+4*f11(x(i-1),y(i-1))+f11(x(i),y(i)))/3
    printf('Corrector y(%g) = %.9f\n\n',x(i),y(i))
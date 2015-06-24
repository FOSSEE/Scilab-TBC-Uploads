//Example 10.23
//Milne Simpson Predictor Corrector Method
//Page no. 338
clc;clear;close;
deff('y=f11(y)','y=2*y-y^2')
h=0.05;
y=[1,1.0499584,1.0996680,1.1488850]
for i=1:6
    x(i)=(i-1)*h
end
for i=5:6
    y(i)=y(i-4)+4*h*(2*f11(y(i-1))-f11(y(i-2))+2*f11(y(i-3)))/3
    printf('\nPredictor y(%g) = %.9f\n\n',x(i),y(i))
    y(i)=y(i-2)+h*(f11(y(i-2))+4*f11(y(i-1))+f11(y(i)))/3
    printf('Corrector y(%g) = %.9f\n\n',x(i),y(i))
end
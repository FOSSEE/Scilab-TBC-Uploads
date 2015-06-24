//Example 10.26
//Milne Simpson and Picard Method
//Page no. 341
clc;clear;close;
deff('y=f(x,y)','y=x-y^2')
y(1)=0;h=0.2;
for i=1:4
    x(i)=(i-1)*h
    y(i+1)=y(1)+integrate('f(x,y(i))','x',0,x(i))
    printf('\n y%g = %.4g\n\n y`%g = %.4g\n\n',i-1,y(i+1),i-1,f(x(i),y(i+1)))
end
for i=5:6
    x(i)=(i-1)*h
    if i==5 then
        y1=y(i)
    else
        y1=y(i-1)
    end
    y(i)=y(i-3)+4*h*(2*f(x(i-1),y(i-(i-5)))-f(x(i-2),y(i-1))+2*f(x(i-3),y(i-2)))/3
    printf('\nPredictor y(%g) = %.4f\n\n',x(i),y(i))
    y(i)=y(i-1)+h*(f(x(i-2),y(i-2))+4*f(x(i-1),y1)+f(x(i),y(i)))/3
    
    printf('Corrector y(%g) = %.4f\n\n',x(i),y(i))
end
printf('\n\n\n\nNote : Computation error in book while calculation of predictor and corrector')
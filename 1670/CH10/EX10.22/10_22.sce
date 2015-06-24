//Example 10.22
//Milne Simpson Predictor Corrector Method
//Page no. 336
clc;clear;close;
deff('y=f11(x,y)','y=x^2+y^2-2')
deff('y=f22(x,y)','y=2*x+2*y*f11(x,y)')
deff('y=f33(x,y)','y=2+2*y*f22(x,y)+2*f11(x,y)^2')
deff('y=f44(x,y)','y=2*y*f33(x,y)+6*f11(x,y)*f22(x,y)')
h=0.1;
y=1;y1=y;
x(1)=0;k=y;
for i=2:3
    x(i)=x(i-1)+h
    for j=1:4
    if j==1 then
        k=k+(h^j)*f11(x(i-1),y)/factorial(j)
    elseif j==2
        k=k+(h^j)*f22(x(i-1),y)/factorial(j)
    elseif j==3
        k=k+(h^j)*f33(x(i-1),y)/factorial(j)
    elseif j==4
        k=k+(h^j)*f44(x(i-1),y)/factorial(j)
    end
end
printf('\ny%i = %g\n\n',i-1,k)
if i==2 then
    y=k;
else
    y2=k;
end
end
k=y1;
for j=1:4
    if j==1 then
        k=k+(-h^j)*f11(x(1),y1)/factorial(j)
    elseif j==2
        k=k+(-h^j)*f22(x(1),y1)/factorial(j)
    elseif j==3
        k=k+(-h^j)*f33(x(1),y1)/factorial(j)
    elseif j==4
        k=k+(-h^j)*f44(x(1),y1)/factorial(j)
    end
end
printf('\ny%i = %g\n\n',-1,k)
y3=k+4*h*(2*f11(x(1),y1)-f11(x(2),y)+2*f11(x(3),y2))/3
printf('\nPredictor y(0.3) = %.9f\n\n',y3)
y4=y+h*(f11(x(3),y)+4*f11(x(3)+h,y2)+f11(x(3)+2*h,y3))/3
printf('Corrector y(0.3) = %.9f',y4)
y3=y1+4*h*(2*f11(x(2),y)-f11(x(3),y2)+2*f11(x(3)+h,y3))/3
printf('\n\nPredictor y(0.4) = %.9f\n\n',y3)
y4=y2+h*(f11(x(3)+h,y2)+4*f11(x(3)+2*h,y3)+f11(x(3)+3*h,y3))/3
printf('Corrector y(0.4) = %.9f',y4)
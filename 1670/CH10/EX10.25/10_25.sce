//Example 10.25
//Milne Simpsons formula
//Page no. 340
clc;clear;close;
h=0.1;
deff('y=f(x,y)','y=x*y+y^2')
y(1)=1;
for i=1:5
    x(i)=(i-1)*h
end
for i=1:3
    K(1)=h*f(x(i),y(i));
    K(2)=h*f(x(i)+h/2,y(i)+K(1)/2);
    K(3)=h*f(x(i)+h/2,y(i)+K(2)/2);
    K(4)=h*f(x(i)+h,y(i)+K(3));
    y(i+1)=y(i)+(K(1)+2*K(2)+2*K(3)+K(4))/6
    for j=1:4
        printf('\n K%i = %.4g\n',j,K(j))
    end
    printf('\ny(%g) = %.4f\n\n',x(i)+h,y(i+1))
end
i=5;
    y(i)=y(i-4)+4*h*(2*f(x(i-1),y(i-1))-f(x(i-2),y(i-2))+2*f(x(i-3),y(i-3)))/3
    printf('\nPredictor y(%g) = %.4f\n\n',x(i),y(i))
    y(i)=y(i-2)+h*(f(x(i-2),y(i-2))+4*f(x(i-1),y(i-1))+f(x(i),y(i)))/3
    printf('Corrector y(%g) = %.4f\n\n',x(i),y(i))
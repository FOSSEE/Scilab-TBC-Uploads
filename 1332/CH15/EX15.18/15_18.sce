//Example 15.18
//Runge Kutta Merson Method
//Page no. 532
clc;clear;close;
deff('y=f(x,y)','y=x+y')
y=1;x=0;h=0.1;
printf('n\t Xn\t Yn\t K1\t K2\t K3\t K4\t K5\tY(n+1)\n----------------------------------------------------------------------')
for i=0:14
    K1=h*f(x,y);
K2=h*f(x+h/3,y+K1/3);
K3=h*f(x+h/3,y+(K1+K2)/6);
K4=h*f(x+h/2,y+(K1+3*K3)/8);
K5=h*f(x+h,y+(K1-3*K3+4*K4)/2)
y1=y+(K1+4*K4+K5)/6
printf('\n %i\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f',i,x,y,K1,K2,K3,K4,K5,y1)
y=y1;
x=x+h;
end
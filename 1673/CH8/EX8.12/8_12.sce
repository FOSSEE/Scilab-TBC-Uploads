//example 8.12
//milne's method
//page 320
clc;clear;close;
deff('y=f(x,y)','y=1+y^2');
y=0,x=0,h=0.2,f1(1)=0;
printf('x                y              y1=1+y^2\n\n')
Y1(1)=1+y^2;
printf('%0.4f         %0.4f      %0.4f\n',x,y,(1+y^2));
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
f1(1)=y1;
Y1(2)=1+y1^2;
printf('%0.4f         %0.4f      %0.4f\n',x+h,y1,(1+y1^2));
y=y1,x=0.2,h=0.2;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
f1(2)=y1;
Y1(3)=1+y1^2
printf('%0.4f         %0.4f      %0.4f\n',x+h,y1,(1+y1^2));
y=y1,x=0.4,h=0.2;
K1=h*f(x,y);
K2=h*f(x+h/2,y+K1/2);
K3=h*f(x+h/2,y+K2/2);
K4=h*f(x+h,y+K3);
y1=y+(K1+2*K2+2*K3+K4)/6;
f1(3)=y1;
Y1(4)=1+y1^2;
printf('%0.4f         %0.4f      %0.4f\n',x+h,y1,(1+y1^2));
Y_4=4*h*(2*Y1(2)-Y1(3)+2*Y1(4))/3;
printf('y(0.8)=%f\n',Y_4);
Y=1+Y_4^2;
Y_4=f1(2)+h*(Y1(3)+4*Y1(4)+Y)/3;//more correct value
printf('y(0.8)=%f\n',Y_4);

//error in lagrenge's interpolation
//example 3.19
//page 107
clc;clear;close;
x=[0 %pi/4 %pi/2];
y=[0 0.70711 1.0];
deff('y=l0(x)','y=((x-0)*(x-%pi/2))/((%pi/4)*(-%pi/4))')
x=poly(0,'x');
disp(l0(x),'l0(x)=');
deff('y=l1(x)','y=((x-0)*(x-%pi/4))/((%pi/2)*(%pi/4))')
x=poly(0,'x');
disp(l1(x),'l1(x)=');
f_x=l0(%pi/6)*y(2)+l1(%pi/6)*y(3);
err=abs(f_x-sin(%pi/6));
deff('y=f(x)','y=((x-0)*(x-%pi/4)*(x-%pi/2))/6');
if abs(f(%pi/6))>err then
    printf('\n\n the error agrees with the actual error')
end
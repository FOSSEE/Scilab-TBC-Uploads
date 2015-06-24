clc;
clear;
function y=f(t)
    y=1.7+cos(4.189*t+1.0472)
endfunction
deltat=0.15;
t1=0;
t2=1.35;
omega=4.189;
del=(t2-t1)/9;
for i=1:10
    t(i)=t1+del*(i-1);
end
sumy=0;
suma=0;
sumb=0;
for i=1:10
    y(i)=f(t(i));
    a(i)=y(i)*cos(omega*t(i));
    b(i)=y(i)*sin(omega*t(i));
    sumy=sumy+y(i);
    suma=suma+a(i);
    sumb=sumb+b(i);
end
A0=sumy/10;
A1=2*suma/10;
B1=2*sumb/10;
disp("The least square fit is y=A0+A1*cos(w0*t)+A2*sin(w0*t), where")
disp(A0,"A0=")
disp(A1,"A1=")
disp(B1,"B1=")
theta=atan(-B1/A1);
C1=(A1^2 + B1^2)^0.5;
disp("Alternatively, the least square fit can be expressed as")
disp("y=A0+C1*cos(w0*t + theta), where")
disp(A0,"A0=")
disp(theta,"Theta=")
disp(C1,"C1=")
disp("Or")
disp("y=A0+C1*sin(w0*t + theta + pi/2), where")
disp(A0,"A0=")
disp(theta,"Theta=")
disp(C1,"C1=")
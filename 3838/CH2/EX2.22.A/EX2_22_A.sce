//EXAMPLE 2.22.A
clc;
t=0:1:15;
t2=0:0.1:15
x1=exp((-3)*t2).*(t2>=0);
x2=t.*(t>=0);
subplot(3,1,1);plot(t2,x1);
xlabel('t');ylabel('x1(t)');
title('signal x1(t)');
subplot(3,1,2);plot(t,x2);
xlabel('t');ylabel('x2(t)');
title('signal x2(t)');
T1=length(x1);
T2=length(x2);
x3=convol(x1,x2);
t1=0:1:T1+T2-2;
subplot(3,1,3);plot(t1,x3);
xlabel('t');ylabel('x3(t)');
title('signal x3(t) =x1(t)*x2(t)');

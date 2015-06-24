//Example 2.3

clc;clear;close;
A=1;T=2;
w0=2*%pi/T;

//Calculation of trignometric fourier series co-efficients
a0=A/T*integrate('sin(w0*t)','t',0,T/2);
for n=1:10;
a(1,n)=2*A/T*integrate('sin(w0*t)*cos(n*w0*t)','t',0,T/2);
b(1,n)=2*A/T*integrate('sin(w0*t)*sin(n*w0*t)','t',0,T/2);
end

//Displaying fourier coefficients
disp(T,'fundamental period T= ',A,'Assumption: Amplitude A= ');
disp('Tignometric fourier series co-efficients:');
disp(a0,'a0= ');disp(a,'an= ');disp(b,'bn= ');

t=0:0.01*T:T/2;
x=[A*sin(w0*t) zeros(1,50)];
t=0:0.01*T:T;
subplot(311);plot(t,x);
title('x(t)');xlabel('time t');
subplot(312);plot2d3(a);
title('Coefficients an');xlabel('n');
subplot(313);plot2d3(b);
title('Coefficients bn');xlabel('n');
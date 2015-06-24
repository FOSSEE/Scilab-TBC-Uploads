//Example 2.4

clc;clear;close;
A=1;T=2;
w0=2*%pi/T;

//Calculation of trignometric fourier series co-efficients
a0=4*A/T*(integrate('t-0.5*T','t',-T/2,-T/4)+integrate('t','t',-T/4,T/4)+integrate('-t+0.5*T','t',T/4,T/2));
for n=1:10;
a(1,n)=2*4*A/T*(integrate('(t-0.5*T)*cos(n*w0*t)','t',-T/2,-T/4)+integrate('t*cos(n*w0*t)','t',-T/4,T/4)+integrate('(-t+0.5*T)*cos(n*w0*t)','t',T/4,T/2));
b(1,n)=2*4*A/T*(integrate('(t-0.5*T)*sin(n*w0*t)','t',-T/2,-T/4)+integrate('t*sin(n*w0*t)','t',-T/4,T/4)+integrate('(-t+0.5*T)*sin(n*w0*t)','t',T/4,T/2));
end

//Displaying fourier coefficients
disp(T,'fundamental period T= ',A,'Assumption: Amplitude A= ');
disp('Tignometric fourier series co-efficients:');
disp(a0,'a0= ');disp(a,'an= ');disp(b,'bn= ');

t=-T/2:0.01*T:T/2;
x=[-4*A/T*t(1:25)-2*A 4*A/T*t(26:75) -4*A/T*t(76:101)+2*A];
subplot(311);plot(t,x);
title('x(t)');xlabel('time t');
subplot(312);plot2d3(a);
title('Coefficients an');xlabel('n');
subplot(313);plot2d3(b);
title('Coefficients bn');xlabel('n');
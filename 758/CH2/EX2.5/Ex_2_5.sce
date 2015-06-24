//Example 2.5

clc;clear;close;
A=1;T=2;d=0.1;
w0=2*%pi/T;

//Calculation of trignometric fourier series co-efficients
a0=A/T*integrate('1','t',-T/4,T/4);
for n=1:10;
a(1,n)=2*A/T*integrate('cos(n*w0*t)','t',-d/2,d/2);
b(1,n)=2*A/T*integrate('sin(n*w0*t)','t',-d/2,d/2);
end

//Displaying fourier coefficients
disp(d,'pulse width d= ',T,'fundamental period T= ',A,'Assumption: Amplitude A= ');
disp('Tignometric fourier series co-efficients:');
disp(a0,'a0= ');disp(a,'an= ');disp(b,'bn= ');

n=round(50*d/T);                                //Variable used for plotting pulses accurately
x=[zeros(1,50-n) A*ones(1,2*n+1) zeros(1,50-n)]
t=-T/2:0.01*T:T/2;
subplot(311);plot(t,x);
title('x(t)');xlabel('time t');
subplot(312);plot2d3(a);
title('Coefficients an');xlabel('n');
subplot(313);plot2d3(b);
title('Coefficients bn');xlabel('n');
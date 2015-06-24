//Example 2.6

clc;clear;close;
A=1;T=2;
w0=2*%pi/T;

//Calculation of trignometric fourier series co-efficients
a0=A/T*(integrate('-1','t',-T/2,0)+integrate('+1','t',0,T/2));
for n=1:10
a(1,n)=2*A/T*(integrate('-cos(n*w0*t)','t',-T/2,0)+integrate('+cos(n*w0*t)','t',0,T/2));
b(1,n)=2*A/T*(integrate('-sin(n*w0*t)','t',-T/2,0)+integrate('+sin(n*w0*t)','t',0,T/2));
end
a=clean(a);b=clean(b);            //Function used to round small entities to zero

//Calculation of exponential fourier series co-efficients
function y=f(t),y=complex(cos(n*w0*t),-sin(n*w0*t)),endfunction;
for n=-10:10
c(1,n+11)=A/T*(-1*intc(-T/2,0,f)+intc(0,T/2,f));
end
c=clean(c);                      //Function used to round small entities to zero

//Calculation of trignometric fourier series co-efficients from exponential fourie series coefficients
a01=c(1);
a1=2*real(c(12:21));
b1=-2*imag(c(12:21));

//Displaying fourier coefficients
disp(T,'fundamental period T= ',A,'Assumption: Amplitude A= ');
disp('Tignometric fourier series co-efficients:');
disp(a0,'a0= ');disp(a,'an= ');disp(b,'bn= ');
disp('Exponential fourier series co-efficients');
disp(c(11),'c0= ');disp(c(12:21),'cn= ');disp(c(10:-1:1),'c-n= ');
disp('Trignometric fourier series co-efficients from exponential coefficients:');
disp(a01,'a0= ');disp(a1,'an= ');disp(b1,'bn= ');
disp('The co-effifcients obtained are same by both methods')

x=[-A*ones(1,50) A*ones(1,51)];
t=-T/2:0.01*T:T/2;
n=-10:10;
subplot(311);plot(t,x);
title('x(t)');xlabel('time t');
subplot(312);plot2d3(a);
title('Coefficients an');xlabel('n');
subplot(313);plot2d3(b);
title('Coefficients bn');xlabel('n');
figure;
subplot(311);plot(t,x);
title('x(t)');xlabel('time t');
subplot(312);plot2d3(n,abs(c));
title('Magnitude of Coefficients |c|');xlabel('n');
subplot(313);plot2d3(n,atan(c));
title('Phase of Coefficients /_c');xlabel('n');
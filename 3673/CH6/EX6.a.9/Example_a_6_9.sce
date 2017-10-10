//Example_a_6_9 page no:239
clc;
Zeq=5+(((2+(2*%i))*(-%i*5))/(2+(%i*2-%i*5)));
Zmag=sqrt(real(Zeq)^2+imag(Zeq)^2);
Zang=atand(imag(Zeq)/real(Zeq));
I=sqrt(100/8.85);
pf=8.85/8.88;
V=100/(3.36*0.99);
P=V*I*sind(4.97);
disp(V,"the value of voltage source is (in V)");
disp(pf,"the power factor is ");
disp(P,"the reactive power is (in VAR)");

//Chapter 18
//Example 18_16
//Page 450

clear;clc;

kv=11;
mva=25;
X0=%i*0.05;
X1=%i*0.2;
X2=%i*0.2;

Xn=%i*0.3;
Er=1;
pu_xn=Xn*mva*1000/kv^2/1000;
I0=Er/(X0+X1+X2+3*pu_xn);
I1=I0;
I2=I0;
Ir=3*I0;
fc=mva*1e6/sqrt(3)/kv/1000*abs(Ir);

printf("Per unit value of Xn = %.4f p.u \n\n", imag(pu_xn));
printf("I1=I2=I0=j(%.3f) A \n\n", imag(I0));
printf("Fault current = j(%.3f) A \n\n", imag(Ir));
printf("Fault current in amperes = Rated current * Per unit value\n");
printf("                           %d A \n\n", fc);



//ex2.7  from the previous problem find instantaneous voltage and current at x=50cm and t=1nsec & peak voltage and current at x=1m
f=2e9;
w=2*%pi*f;
x=0.5;
t=1e-9;
// at x=0 t=0 v(t)=2V 
Vpositive=2;
// at 0=60,x=0,t=0 
Vnegative=1;
o=%pi/3;
k=sqrt((0.1+%i*w*0.01e-6)*(0.01+%i*w*1e-10));
a=real(k);
b=imag(k);
v=Vpositive*exp(%i*0)*exp(-a*x)*exp(%i*(w*t-b*x))+Vnegative*exp(%i*o)*exp(a*x)*exp(%i*(w*t+b*x));
V=real(v);
disp('Therefore, at x= 50c and t=10nsec , we get');
disp('instantaneous value of voltage is= '+string(V)+'V');
zo=complex(10,0.0358);
i=real(Vpositive*exp(0)*exp(-a*x)*exp(%i*(w*t-b*x))/zo-Vnegative*exp(%i*o)*exp(a*x)*exp(%i*(w*t+b*x))/zo);
disp('instantaneous value of current is= '+string(i)+'A');

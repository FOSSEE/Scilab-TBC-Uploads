clear
clc

//Example 10.14
disp('Example 10.14')

s=%s;
G=4/((s+1)*(s+2)*(s+3));
K=10; //given in question
p=1+K*G;//characteristic equation
q=roots(numer(p));

q_abs=abs(q);
q_real=real(q);
q_imag=imag(q);
d=q_abs(2);
psi=%pi-acos(q_real./q_abs);//angle in radians
tau=1/d;
eta=cos(psi)

mprintf("\nd=%f\npsi=%f degrees\ntau=%f time units\neta=%f",d,psi(2)*180/%pi,tau,eta(2))

mprintf("\n\nPlease note that the answers given in book are wrong")








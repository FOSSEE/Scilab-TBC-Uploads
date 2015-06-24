clear;
clc;
v=1;
i=1.188*%e^(-28.6*%i*%pi/180);
s=v*conj(i);
p=real(s);
q=(imag(s));
mprintf("the complex power=%f+j%fpu\n the real power P=%fpu\nthe reactive powers=%fpu",p,q,p,q);

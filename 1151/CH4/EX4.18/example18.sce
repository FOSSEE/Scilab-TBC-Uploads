// given g(s)=100/s(s+6.54)
printf("given G(s)=g(s)=100/s(s+6.54) \n H(s)=1 \n C(s)/R(s)=G(s)/(1+G(s)*H(s)) \n =100/(s^2+6.54*s+100)");
printf("compare with w^2/(s^2+2*d*w*s+w^2)");
w=sqrt(100);
d=6.54/(2*w);
wr=w*sqrt(1-2*d^2);
mr=1/(2*d*sqrt(1-d^2));
b=w*sqrt(1-2*d^2+sqrt(2-4*d^2+4*d^4));
disp(w,"undamped natural frequency (in rad/sec)=")
disp(d,"damping ratio=")
disp(wr,"resonant frequency (in rad/sec)=")
disp(mr,"resonance peak=")
disp(b,"bandwidth of closed loop system(in rad/sec)=")

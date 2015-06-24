//givenC(s)/R(s)=G(s)/(1+G(s)*H(s))=w^2/(s^2+2*d*w*s+w^2)
printf("given R(s)=G(s)/(1+G(s)*H(s))=w^2/(s^2+2*d*w*s+w^2)\n its also given maximum overshoot should not exceed 30 percent  ");
d1=log(0.3);
d=sqrt(d1^2/(d1^2+%pi^2));
mr=1/(2*d*sqrt(1-d^2));
w=10;
b=w*sqrt(1-2*d^2+sqrt(2-4*d^2+4*d^4));
disp(d,"damping ratio=")
disp(mr,"resonance peak=")
disp(b,"bandwidth of closed loop system(in rad/sec)=")

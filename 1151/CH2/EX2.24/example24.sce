printf("given G(s)=K/(s*(1+s*T)) \n Mp=20 percent \n resonant frequency=6 rad/sec\n we have to determine the value of K,T,resonant peak")
printf(" H(s)=1 \n C(s)/R(s)=G(s)/(1+G(s)*H(s)) \n =(K/T)/(s^2+s/T+(K/T)");
printf("compare with w^2/(s^2+2*d*w*s+w^2)");
d1=log(0.2);
d=sqrt(d1^2/(d1^2+%pi^2));
wr=6;
w=wr/sqrt(1-(2*(d^2)));
K=sqrt(4*d*w^2);
T=sqrt(4*d/w^2);
mr=1/(2*d*sqrt(1-d^2));
disp(w,"undamped natural frequency (in rad/sec)=")
disp(d,"damping ratio=")
disp(K,"value of K=")
disp(T,"value of T=")
disp(mr,"resonance peak=")


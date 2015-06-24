printf(" unity feedback system with transfer function G(s)=K/(s*(s+10))\n Determine K so that the syetm will have damping ratio0.5.For this value of K find settling time ,peak overshootand peak time for unit step input");
printf("characterstic equation of the given system is  1+G(s)H(s)=s^2+10*s+K=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
d=0.5;
K=(10/(2*d))^2;
w=sqrt(K);
ts1=4/(d*w);
mo1=exp((-%pi*d)/sqrt(1-d^2))*100;
pt1=%pi/(w*sqrt(1-d^2));
disp(K,"K=")
disp(d,"damping ratio")
disp(w,"natural frrequency(in rad/sec)=")
disp(pt1,"peak time(in sec)for sytem  is")
disp(mo1,"maximum overshoot(in %)for sytem  is")
disp(ts1,"settling time(in sec)is")

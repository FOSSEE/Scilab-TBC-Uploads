printf(" Given C(s)/R(s)=10/(s^2+2*s+10)")
printf("characterstic equation of the given system is s^2+2*s+10=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=sqrt(10);
d=1/(2*w);
mo1=exp((-%pi*d)/sqrt(1-d^2))*100;
ts1=4/(d*w);
ess1=2*d/w;
disp(d,"damping ratio")
disp(w,"natural frrequency(in rad/sec)=")
disp(ess1,"steady state error without error control = ")
disp(ts1,"settling time(in sec)for sytem without  derivative control is")
disp(mo1,"maximum overshoot(in %)for sytem without derivative control is")
printf("overal transfer function with derivative control is C(s)/R(s)=10(1+s*Ke)/(s*(s+2)+10*(1+s*Ke))")
printf("characterstic equation of the error control system is s^2+s*(2+10*Ke)+10=0");
Ke=(2*d*w-2)/10;
disp(Ke,"Ke=");
printf("characterstic equation of the error control system with Ke = 0.16 is s^2+s*3.16+10)=0");
d2=3.16/(2*w);
mo2=exp((-%pi*d2)/sqrt(1-d2^2))*100;
ts2=4/(d2*w);
ess2=2*d2/w;
disp(d2,"damping ratio for error control system=")
disp(w,"natural frrequency(in rad/sec) of error control system=")
disp(ess2,"steady state error with error control = ")
disp(ts2,"settling time(in sec)for sytem with derivative control is")
disp(mo2,"maximum overshoot(in %)for sytem with derivative control is")

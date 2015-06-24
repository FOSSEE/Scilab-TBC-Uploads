printf("characterstic equation of the given system is s^2+1.4*s+14=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=sqrt(14);
d=1.4/(2*w);
d1=.7;
Kt=2*(d1-d)/w;
ess1=2*d/w;
disp(d,"damping ratio")
disp(w,"natural frrequency(in rad/sec)=")
disp(ess1,"steady state error without derivative control = ")
printf("overal transfer function with derivative control is C(s)/R(s)=w^2/(s^2+(2dw+w^2Kt)*s+w^2)=14/(s^2+5.23*s+14")
disp(Kt,"Kt=")
rt=(%pi-atan(sqrt((1-d1)/d1)))/(w*sqrt(1-d1^2));
pt1=%pi/(w*sqrt(1-d1^2));
mo1=exp((-%pi*d1)/sqrt(1-d1^2))*100;
ess2=2*d1/w+Kt;
disp(pt1,"peak time(in sec)for sytem with derivative control is")
disp(rt,"rise time(in sec)for sytem with derivative control is")
disp(mo1,"maximum overshoot(in %)for sytem with derivative control is")
disp(ess2,"steady state error with derivative control = ")

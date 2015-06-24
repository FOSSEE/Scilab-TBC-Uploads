printf(" Given C(s)/R(s)=14/(s^2+1.4*s+14)")
printf("characterstic equation of the given system is s^2+1.4*s+14=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=sqrt(14);
d=1.4/(2*w);
d1=.7;
t=2*(d1-d)/w;
pt1=%pi/(w*sqrt(1-d^2));
mo1=exp((-%pi*d)/sqrt(1-d^2))*100;
rt=(%pi-atan(sqrt((1-d)/d)))/(w*sqrt(1-d^2));
disp(t,"Td=")
disp(pt1,"peak time(in sec)for sytem without derivative control is")
disp(rt,"rise time(in sec)for sytem without derivative control is")
disp(mo1,"maximum overshoot(in %)for sytem without derivative control is")
printf("overal transfer function with derivative control is C(s)/R(s)=14*(1+0.274*s)/(s^2+5.236*s+14)")
printf("c(t)=1-e^(-2.618*t)*cos(2.673*t)+0.455*e^(-2.618t)*sin(2.673t)")
tp=(%pi-atan(2.58))/2.673;
tr=(1/2.673)*atan(1/0.455);
mo2=1-%e^(-2.618*tp)*cos(2.673*tp)+0.455*%e^(-2.618*tp)*sin(2.673*tp);
mp=(mo2-1)*100;
disp(tp,"peak time(in sec)for sytem with derivative control is")
disp(tr,"rise time(in sec)for sytem with derivative control is")
disp(mp,"maximum overshoot(in %)for sytem with derivative control is")

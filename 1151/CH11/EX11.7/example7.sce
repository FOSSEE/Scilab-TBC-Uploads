printf(" Given G(s)=10/(s*(s+2))");
printf("characterstic equation of the given system is 1+G(s)H(s)= s^2+2*s+10=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=sqrt(10);
d=1/(2*w);
ess1=2*d/w;
disp(d,"damping ratio")
disp(w,"natural frrequency(in rad/sec)=")
disp(ess1,"steady state error without error control = ")
printf("overal transfer function with derivative control is C(s)/R(s)=2*Ka/(s^2+s*(2+2*Ka)+2*Ka))");
printf("characterstic equation of the error control system is s^2+s*(2+2*Ka)+2*Ka=0");
printf("1+Kt=0.2*Ka");
Ka=(1.98/0.4)^2;
Kt=0.2*Ka-1;
disp(Ka,"Ka=")
disp(Kt,"Kt=")

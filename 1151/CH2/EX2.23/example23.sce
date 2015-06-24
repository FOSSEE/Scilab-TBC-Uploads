printf("closed loop transfer function C(s)/R(s)=w^2/(s^2+2*d*w*s+w^2)");
printf("characterstic equation of this system is s^2+2*d*w*s+w^2=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
printf("we have to determine w and d given maximum overshoot=0.05 and settling time =2 sec");
t=2;
d1=log(0.05);
d=sqrt(d1^2/(d1^2+%pi^2));
w=4/(d*t);
disp(d,"damping ratio:");
disp(w,"natural undamped frequency (in rad/sec):")

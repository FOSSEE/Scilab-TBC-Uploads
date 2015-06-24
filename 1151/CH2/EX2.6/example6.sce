printf("open loop transfer function G(s)=10/((s+2)*(s+5))");
printf("for unity feedback system H(s)=1")
printf("characterstic equation of closed loop  system is 1+G(s)H(s)=0");
printf("characterstic equation of the given system is s^2+7*s+");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=sqrt(20);
d=7/(2*w);
mo=exp((-%pi*d)/sqrt(1-d^2))*100;
disp(d,"damping ratio=");
disp(w,"undamped natural frequency(in rad/sec)=")
disp(mo,"maximum overshoot(in %)")

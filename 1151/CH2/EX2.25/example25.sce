printf("given c(t)=1+0.2^e-60t-1.2*e^-10t");
printf("Laplace transform is C(s)=600/(s*(s+10)*(s+60))\n R(s)=1/s \n transfer function is C(s)/R(s)=600/((s+2)*(s+60))");
printf("characterstic equation of this system is s^2+70*s+600=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=sqrt(600);
d=70/(2*w);
disp(d,"damping ratio:");
disp(w,"natural undamped frequency (in rad/sec):")

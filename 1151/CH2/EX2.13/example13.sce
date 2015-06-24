 clc;printf("closed loop transfer function =(K/T)/(s^2+s/T+K/T))");
printf("characterstic equation of the given system is s^2+s/T+K/T=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
d2=0.9;
d1=0.3;
c=(d1/d2)^2;
disp(c,"K1/K2=")
printf("hence,the gain K1 at which d=0.3 should be multiplied by 1/9 in order to increase the damping ratio from 0.3 to 0.9");

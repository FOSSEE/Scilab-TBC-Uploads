printf("closed loop transfer function =K/(s^2+(2+kK)*s+K) withd=0.7 and w=4 rad/sec");
printf("characterstic equation of this system is s^2+(2+kK)*s+K=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
w=4;
K=w^2;
d=0.7;
k=(2*d*w-2)/K;
disp(K,"Value of K is");
disp(k,"Value of k is");

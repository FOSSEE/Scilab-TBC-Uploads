printf("closed loop transfer function =G/(s^2+3*s+G)");
printf("characterstic equation of the given system is s^2+3*s+G=0");
printf("compare it with the standard second order characterstic equation s^2+2*d*w*s+w^2=0");
d=0.6;//assume
G=(1.5/d)^2;
G'=2*G;
w=sqrt(G');
d'=1.5/w;
w'=w*sqrt(1-d'^2);
t=2*%pi/w';
disp(G,"the minimum value of G for the step response of the system that it will exhibit an overshoot is");
disp(t,"if G is twice the minimum value then time period T(in sec)= ")

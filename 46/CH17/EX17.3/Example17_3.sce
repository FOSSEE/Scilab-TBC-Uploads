//Example 17.3
clc;
syms Kc tauI s;
g1=Kc*(1+1/(tauI*s));
g2=1/(s+1);
g2=exp(-1.02*s)
G=g1*g2*g3//Openloop transfer function
//By solving the equation -180=-atan(w)-57.3*1.02*w, we get
wc0=2;//rad/min
disp('AR=Kcu/sqrt(1+wc0^2)')
AR=1;
Kcu=AR*sqrt(1+wc0^2);
//From Ziegler-Nicholas rules
Kc=Kcu*0.45//ultimate gain
Pu=2*%pi/wc0;//ultimate period
tauI=Pu/1.2;
disp('min',tauI,'tauI=')
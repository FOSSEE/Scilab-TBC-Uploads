//Example 8.18.3: alphas,speed and delay angle
clc;
clear;
close;
//given data :
format('v',7)
v1=208;//
vsrms=v1/sqrt(3);//
n=1000;//rpm
w=n*(%pi/30);//in rad/s
ang=0;//
ef=((3*sqrt(3)*sqrt(2)*vsrms*cosd(ang))/%pi);//in volts
rf=140;//in ohms
If=ef/rf;//in amperes
t=120;//N-m
 kv=1.2;//
ia=(t)/(kv*If);//in amperes
eg=kv*If*w;//in volts
ra=0.25;//in ohms
ea=eg+(ia*ra);//
alpha=acosd((ea*%pi)/(3*sqrt(3)*sqrt(2)*vsrms))
disp("part (a)")
disp(round(alpha),"alpha in degree is")
disp("part (b)")
rf=140;//in ohms
If=ea/rf;//in amperes
t=120;//N-m
 kv=1.2;//
ia=(t)/(kv*If);//in amperes
ra=0.25;//in ohms
eg=ea-(ia*ra);//
w=(eg/(kv*If));//in rad/s
N=w*(30/%pi);//rpm
disp(N,"speed in rpm is")
//speed is calculated wrong in the textbook
disp("part (c)")
n1=1000;//rpm
w=n1*(%pi/30);//in rad/s
v1=208;//
vsrms=v1/sqrt(3);//
w1=(1800*(%pi/30));//
n=1800;//rpm
ang=0;//
T=120;//n-m
alphas=0;//
ang=0;//
ea=((3*sqrt(3)*sqrt(2)*vsrms*cosd(ang))/%pi);//in volts
rf=140;//in ohms
If=ea/rf;//in amperes
t=120;//N-m
 kv=1.2;//
ia=(t)/(kv*If);//in amperes
ra=0.25;//in ohms
eg=ea-(ia*ra);//
if1=eg/(kv*w1);//in amperese
ef1=if1*rf;//in volts
alphaf=acosd((ef1*%pi)/(3*sqrt(3)*120*sqrt(2)));
disp(alphaf,"delay angle in degree is")

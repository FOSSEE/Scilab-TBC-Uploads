//to compute acc time and value of rotor resistance

clc;
s=1-.96;    //load is brought to .96 of n_s
s_max_T=sqrt((1-s^2)/(2*log(1/s)));
R=1.5;
R2_opt=R*s_max_T;disp(R2_opt,'rotor resistance(ohm)');
n=1000;
w_s=2*%pi*n/60;
V=415;
Tmax=(3/w_s)*(.5*(V/sqrt(3))^2)/R;
J=11;
t_A=(J*w_s/(2*Tmax))*((1-s^2)/(2*s_max_T)+s_max_T*log(1/s));
disp(t_A,'acc time(min)');

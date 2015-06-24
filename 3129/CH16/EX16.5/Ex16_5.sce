//Finding the Performance Parameters of a Three-Phase Induction Motor with frequency Control
//Example 16.5(Page No- 713)
clc
clear
//given data
Vl = 460;//V
Va = Vl/3;
Vs = Va;
f = 60;//Hz
w_b = 2*%pi*f;//rad/s
p = 4;
Po = 11200;//W
T_mb = Po*(30/(1750*%pi));
Tm = 35;//W
R_r = 0.38;
Xs = 1.14;
X_r = 1.71;

//part(a)
bet = sqrt(T_mb/Tm);
w_s = bet*w_b;
w = (p*w_s)/2;
f = w/(2*%pi);
printf('(a)\t The supply frequency is %d rad/s or %.2f Hz',w,f);

//part(b)
s_m = (R_r/bet)/(Xs+X_r);
w_m = w_s*(1-s_m);
w_rpm = 9.5492966*w_m;
printf('\n (b)\t The speed for maximum torque is %.2f rad/s or %d rpm',w_m,w_rpm)

//ans in textbook is approximate

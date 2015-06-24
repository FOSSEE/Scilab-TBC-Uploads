//Finding the Performance Parameters of a Cylindrical rotor Synchronous motor
//Example 16.8(Page No- 741)
clc
clear
//given data
PF = 1;
theta_m = 0;// since cos(theta)=1
Vl = 460;//V
Va = Vl/sqrt(3);
Vb = Va;
Vs = Va;
p = 6;
f = 60;//Hz
w = 2*%pi*f;//rad/s
w_s = 2*(w/p);
w_b = w_s;
w_m = w_s;
d = Vb/w_b;
Ra = 0;
Xs = 2.5;

//At 720rpm
T_L = 398;//given
T_L = T_L*(720/1200)^2;
w_s = 720*(%pi/30);
w_m = w_s;
Po = T_L*w_s;

//part(a)
Va = d*w_s;
printf('(a)\t The input voltage Va is %.2f V',Va);

//part(b)
Ia = Po/(3*Va);
printf('\n (b)\t The armature current is %.1f A',Ia);

//part(c)
V_f = Va-Ia*(cos(theta_m)-%i*(sin(theta_m)))*(Ra+%i*Xs);
V_f_abs = abs(V_f);
tangle = atand(imag(V_f)/real(V_f));
printf('\n (c)\t The excitation voltage is %.2f V %.2f degrees',V_f_abs,tangle);

//part(d)
delta = tangle;//torque angle
printf('\n (d)\t The torque angle is %.2f degrees',delta);

//part(e)
Tp = (3*Va*V_f_abs)/(Xs*w_s);
printf('\n (e)\t The pull-out torque is %.2f N.m',Tp);


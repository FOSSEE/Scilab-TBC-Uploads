//Finding the Performance Parameters of a Three-Phase Induction Motor with  Rotor voltage control
//Example 16.3(Page No- 706)
clc
clear
//given data
Vl = 460;//V
Vs = Vl/sqrt(3);
Va = Vs;
Xm = 6.1;//Ohm
p = 6;
f = 60;//Hz
w = 2*%pi*f;
w_s = 2*w/p;
n_m = 0.9
R_r = 0.044;//Ohm
Rs = 0.041;


//part(a)
w_m = 800*(%pi/30);
T_L = 750*(800/1175)^2;//given:- the load torque which is proportional to speed squared is 750N.m at 1175 rpm and motor is operated at 800rmp
Id = T_L*w_s/(2.3394*Vs*n_m);
R = (1 - (w_m/w_s))*((2.3394*Vs*n_m)/Id);
printf('(a)\t The value of Resistance R is %.4f Ohm',R);

//part(b)
//at 1050rpm
T_L = 750*(1050/1175)^2
Id = T_L*w_s/(2.3394*Vs*n_m);
printf('\n (b)\t The inductor current Id is %.1f A',Id);

//part(c)
w_m = 1050*%pi/30;
k = 1 - ((1 - (w_m/w_s))*((2.3394*Vs*n_m)/(Id*R)));
printf('\n (c)\t The duty cycle k is %.3f',k);

//part(d)
s = (w_s-w_m)/w_s ;
Vd = 2.3394*s*Vs*n_m;
printf('\n (d)\t The dc voltage Vd is %.1f',Vd);

//part(e)
Pl = Vd*Id;
Po = T_L*w_m;
I_r = sqrt(2/3)*Id*n_m;
P_ru = 3*I_r^2*R_r;
P_su = 3*I_r^2*Rs;
Pi = Po + Pl + P_ru + P_su ;
eta = Po/Pi;
printf('\n (e)\t The efficiency is %.2f%%',eta*100);

//part(f)
n = 1;
I_r1 = 0.7797*Id*n_m;
Im = Va/Xm;
Ii1 = sqrt((0.7797*Id*n_m)^2 + (Va/Xm)^2);
PF_angle = -atand(Im/Ii1);
PF_s = cosd(PF_angle);
printf('\n (f)\t The input PF is %.3f(lagging)',PF_s);

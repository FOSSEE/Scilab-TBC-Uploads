//Finding the Performance Parameters of a Three-Phase Induction Motor with Stator Voltage Control
//Example 16.2(Page No- 702)
clc
clear
//given data
p = 4;
f = 60;//Hz
Vl = 460;//V
Vs = Vl/sqrt(3);
Rs = 1.01;//Ohm
R_r = 0.69;//Ohm
Xs = 1.3;//Ohm
X_r = 1.94;//Ohm
Xm = 43.5;//Ohm
w = 2*%pi*f;
w_s = w*(2/4);

w_m = 1740*%pi/30;
T_L = 41;//N.m
Km = T_L/w_m^2;// T_L = Km*w_m^2
w_m = 1550*%pi/30;
s = (w_s-w_m)/w_s;

//part(a)
T_L = Km*w_m^2;
printf('(a)\t The load torque is %.1f N.m',T_L);

//part(b)
I_r = sqrt((s*T_L*w_m)/(3*R_r*(1-s)));//for negligible no load loss
printf('\n (b)\t The rotor current is %.2f A',I_r);

//part(c)
Va = I_r*sqrt(((Rs+(R_r/s))^2+(Xs+X_r)^2));
printf('\n (c)\t The stator supply voltage is %.2f V',Va);
Vs = Va;

//part(d)
Z_i = ((-Xm*(Xs+X_r) + %i*(Xm*(Rs+(R_r/s))))/(Rs + (R_r/s)+%i*(Xm + Xs+X_r)));
I_i = Va/Z_i;
printf('\n (d)\t The input current Ii is %.2f angle %.2f',abs(I_i),atand(imag(I_i),real(I_i))); 
Is = abs(I_i);

//part(e)
PF_m = cosd(atand(imag(I_i),real(I_i)));
Pi = 3*Vs*Is*PF_m;
printf('\n (e)\t The input power Pi is %d W',Pi);

//part(f)
//w_m = w_s*(1-s);
//substiuting this value of w_m in equation of I_r we get
// I_r = (1-s)*ws*sqrt((s*Km*w_s)/(3*R))
//to get slip at I_r becomes maximum differentiating above equation wrt s we get s_a as 1/3
s_a = 1/3;
printf('\n (f)\t The slip for maximum current sa is %.3f',s_a);

//part(g)
I_r_max = w_s*sqrt((4*Km*w_s)/(81*R_r));
printf('\n (g)\t Maximum Rotor current is %.1f A',I_r_max);

//part(h)
w_a = w_s*(1-s_a)
printf('\n (h)\t The speed at maximum current is %.2f rad/s',w_a);

//part(i)
Ta = 9*I_r_max^2*(R_r/w_s);
printf('\n (i)\t The torque at maximum current is %.2f N.m',Ta);

//Note:- some ans in the textbook are approximate

//Finding the Performance Parameters of a Three-Phase Induction Motor with frequency and voltage Control
//Example 16.6(Page No- 714)
clc
clear
//given data
p = 4;
Vl = 460;
Va = Vl/sqrt(3);
Vs = Va;
f = 60;//Hz
w = 2*%pi*f;
w_b = 2*w/p;
d = Va/w_b;
R_r = 0.38;
Rs = 0.66
Xs = 1.14;
X_r = 1.71;

//part(a)
w_s = w_b;
bet = 1;
Va = d*w_s;
s_m = R_r/(sqrt(Rs^2+bet^2*(Xs+X_r)^2));
w_m = w_s*(1-s_m);
Tm = (3*Vs^2)/(2*w_s*(Rs+sqrt(Rs^2+(Xs+X_r)^2)));
printf('(a)\t Maximum torque for 60Hz is %.2f N.m',Tm);
//At f = 30Hz
w_s = 2*2*%pi*30/4;
bet = 30/60;
Va = d*w_s;
s_m = R_r/sqrt(Rs^2+bet^2*(Xs+X_r)^2);
w_m = w_s*(1-s_m);
Tm = (3*Va^2)/(2*w_s*(Rs+sqrt(Rs^2+bet^2*(Xs+X_r)^2))); 
printf(' \n  \t Maximum torque for 30Hz is %.2f N.m',Tm);

//part(b)
//At 60Hz
bet = 1;
w_b = 2*(w/p);
w_s = w_b;
Va = d*w_s;
s_m = R_r/((Xs+X_r));
w_m = w_s*(1-s_m);
Tm = (Va/bet)^2*(3/(2*w_b*(Xs+X_r)));
printf('\n (b)\t The maximum Torque for 60Hz is %.2f N.m',Tm);

//At 30Hz
bet = 0.5;
w_b = 2*(w/p);
w_s = 94.25;
Va = 132.79;
s_m = R_r/(bet*(Xs+X_r));
w_m = w_s*(1-s_m);
Tm = (Va/bet)^2*(3/(2*w_b*(Xs+X_r)));
printf('\n   \t The maximum Torque for 30Hz is %.2f N.m',Tm);

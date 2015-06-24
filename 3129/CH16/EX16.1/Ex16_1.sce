//Finding the Performance Parameters of a Three-Phase Induction Motor
//Example 16.1(Page No- 699)
clc
clear
//given data
f = 60;//Hz
p = 4;//
R_r = 0.23;//Ohm
Rs = 0.42;//Ohm
Xs = 0.82;//Ohm
X_r = Xs;
Xm = 22;
N = 1750;//rpm
Vs = 460/sqrt(3);
w = 2*%pi*f;//rad/s
w_m = 1750*(%pi/30);//rad/s
P_nl = 60;//W

//part(a)
w_s = (2*w/p);
printf('(a)\t The synchronous speed ws is %.2f rad/s',w_s);

//part(b)
s = (w_s - w_m)/w_s ;
printf('\n (b)\t The slip s id %.3f',s);

//part(c)
Z_i = ((-Xm*(Xs+X_r) + %i*(Xm*(Rs+(R_r/s))))/(Rs + (R_r/s)+%i*(Xm + Xs+X_r)));
I_i = Vs/Z_i ; 
printf('\n (c)\t The input current Ii is %.2f angle %.2f',abs(I_i),atand(imag(I_i),real(I_i))); 
Is = abs(I_i);

//part(d)
PF_m = cosd(atand(imag(I_i),real(I_i)));
Pi = 3*Vs*Is*PF_m;
printf('\n (d)\t The input power Pi is %d W',Pi);//Ans given is textbook is approximate 

//part(e)
PF_s = PF_m;//input PF is same as motor PF since supply is sinusidal
printf('\n (e)\t The input PF of supply if %.3f (lagging)',PF_s);

//part(f)
I_r = Vs/sqrt((Rs+R_r/s)^2 + (Xs+X_r)^2);
Pg = 3*I_r^2*(R_r/s);
printf('\n (f)\t The gap power pg is %d',Pg);//Ans on textbook is approximate

//part(g)
P_ru = 3*I_r^2*R_r;
printf('\n (g)\t The rotor copper loss is %.2f W',P_ru);

//part(h)
P_su = 3*I_r^2*Rs;
printf('\n (h)\t Stator copper loss %d W',P_su);

//part(i)
Td = (Pg/w_s);
printf('\n (i)\t Developed Torque is %.1f N.m',Td);

//part(j)
Po = Pg - P_ru - P_nl;
printf('\n (j)\t The output power is %d W',Po);

//part(k)
//for starting torque s = 1
s = 1;
I_r = Vs/sqrt((Rs+R_r/s)^2 + (Xs+X_r)^2);
Ts = (3*R_r*Vs^2)/(w_s*((Rs+R_r)^2+(Xs+X_r)^2));//starting torque
printf('\n (k)\t The starting torque is %.2f N.m',Ts);

//part(l)
s_m = (R_r/(sqrt(Rs^2+(Xs+X_r)^2)));
printf('\n (l)\t The slip for maximum torque is +/- %f',s_m);

//part(m)
T_mm = (3*Vs^2)/(2*w_s*(Rs+sqrt(Rs^2+(Xs+X_r)^2)));
printf('\n (m)\t The maximum developed torque is %.2f N.m',T_mm);

//part(n)
T_mr = (3*Vs^2)/(2*w_s*(-Rs+sqrt(Rs^2+(Xs+X_r)^2)));
printf('\n (n)\t The maximum negative torque is -%.2f',T_mr);

//part(o)
s_m = R_r/(Xs+X_r);
T_mm = 3*Vs^2/(2*w_s*(Xs+X_r));
T_mr = -T_mm;
printf('\n (o)\t Tmm and Tmr if Rs is neglected is %.2f N.m and %.2f N.m respectively',T_mm,T_mr);

// Note:- ans given in the textbook are approximate


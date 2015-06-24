//Chapter 14
//Example 14.6
//Page 392
//frequency
clear;clc;
delta = 28.44;
H = 5;
ws = 377;
Pm =1;
Vt = 1;V_ib = 1;
X1_g =0.2;X1_t = 0.1;X1_l1 = 0.4;X1_l2 = 0.4;
X = X1_t + X1_l1 /2;
a = asin(Pm * X / (Vt * V_ib)) * 180 / %pi;
Vt1 = Vt * (cos(a * %pi / 180) + %i * sin(a * %pi / 180));
I = (Vt1 - V_ib) / (%i * X);
E1 = Vt1 + (%i * X1_g * I);
X1 = X1_g + X1_t + X1_l1 /2;
Pmax = abs(E1) * V_ib / X1;
Sp = Pmax * cos(delta * %pi / 180);
wn = sqrt(ws * Sp / (2 * H));
fn = wn / (2 * %pi);
T = 1 / fn;
printf("\n The angular frequency of oscillation is %.3f elec rad/s \n",wn)
printf("\n The corresponding frquency of oscillation is %.2f Hz \n",fn)
printf("\n The period of oscillation is %.3f s",T)
//Chapter 14
//Example 14.7
//Page 392
//ccangle
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
delta_rad = delta * %pi / 180;
delta_cr = acos((%pi - 2 * delta_rad) * sin(delta_rad) - cos(delta_rad));
t_cr = sqrt(4 * H * (delta_cr - delta_rad) / (ws * Pm))
printf("\n Critical clearing angle = %.3f elec rad \n",delta_cr)
printf("\n Critical clearing angle for the system = %.3f s",t_cr)

//Chapter 14
//Example 14.5
//Page 389
//postfault
clear;clc
H = 5;
Pm =1;
Vt = 1;V_ib = 1;
X1_g =0.2;X1_t = 0.1;X1_l1 = 0.4;X1_l2 = 0.4;
X = X1_t + X1_l1 /2;
a = asin(Pm * X / (Vt * V_ib)) * 180 / %pi;
Vt1 = Vt * (cos(a * %pi / 180) + %i * sin(a * %pi / 180));
I = (Vt1 - V_ib) / (%i * X);
E1 = Vt1 + (%i * X1_g * I);
y12 = 1 / (%i*(X1_g + X1_t + X1_l1));
Y12 = -y12;
Pe = abs(E1) * V_ib * abs(Y12);
disp('The power abgle equation is')
printf("\n Pe = %.3f * sin(delta) \n where delta is the machine rotor angle wrt to the infinite bus",Pe)
disp('The swing equation is')
printf("\n (%.2f/180f) * d(delta)^2/dt^2 = %.2f - %.2fsin(delta) \n",H,Pm,Pe)
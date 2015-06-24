//Chapter 14
//Example 14.3
//Page 386
//infinitebus
clear;clc;
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
disp(Vt1,'The terminal voltage after considering the angle is,in per unit')
disp(I,'The output current from the generator in per unit is')
disp(E1,'The transient internal voltage in per unit')
disp('Power angle equation is')
printf("\n Pe = %.2f * sin(delta) \n where delta is the machine rotor angle wrt to the infinite bus",Pmax)
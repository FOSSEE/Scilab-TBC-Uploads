clear; clc; close;

Idss = 8*10^(-3);
Vp = -4;

gmo = 2*Idss/abs(Vp);

//part-a 
Vgs = -0.5;

gm = gmo*(1-(Vgs/Vp));
disp(gm,'gm(in S) for part a = ');

//part-b
Vgs = -1.5;
gm = gmo*(1-(Vgs/Vp));
disp(gm,'gm(in S) for part b = ');

//part-c
Vgs = -2.5;
Id_delta = 1.5*10^(-3);
Vgs_delta = 1;

gm = gmo*(1-(Vgs/Vp));
disp(gm,'gm(in S) for part c = ');

disp(gmo,'Max gm(in S) is = ')


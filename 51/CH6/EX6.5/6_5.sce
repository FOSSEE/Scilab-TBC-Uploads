clc;
clear;ang1=0;//radians
ang2=%pi/6;//radians
vp='-2*log(r)';
//vr=d(vp)/d'r
//vr=(-2)/r;
//vang=(1/r)*(d(vp)/d(ang))
vang=0;
q=(integrate('-2','ang',ang1,ang2));
disp("ft^2/sec",q,"Volume rate of flow (per unit length) into the opening = ")
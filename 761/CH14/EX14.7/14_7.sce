clc;
//page no 477
//prob no. 14.7
//A generator sends 50mW at 50ohm line & reflection coeff I=0.5
Pi=50;I=0.5;
//Determination of amount of power reflected
Pr=(I^2)*Pi;
disp('mW',Pr,'The amount of power reflected is');
//Determination of remainder power that reaches load
Pl=Pi-Pr;
disp('mW',Pl,'The power dissipated in load is');
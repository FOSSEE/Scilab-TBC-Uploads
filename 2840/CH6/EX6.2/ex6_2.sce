clc;
clear all;
a1=2*1e-3;//distance from the laser
a2=3*1e-3;//distance from the laser
d1=2;//output beam spot diameter
d2=4;//output beam spot diameter
th=(a2-a1)/(2*(d2-d1));//angle of divergence
disp('rad',th,'angle of divergence');

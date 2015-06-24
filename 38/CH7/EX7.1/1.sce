// Caption: Finding stator current and efficiency
clear;
close;
clc;
V_app=220/sqrt(3);//applied voltage to neutral
I_s=127/6.75;//stator current
pf=cos(.565);//in radians

speed=120/6;// synchronous speed in r/s
S_r=(1-.02)*speed*60;//rotor spped in r/min
P_g=3*18.8^2*5.41;
P=.98*5740;//internal mechanical power

eff=1-830/6060;
disp(eff,'efficiency=')

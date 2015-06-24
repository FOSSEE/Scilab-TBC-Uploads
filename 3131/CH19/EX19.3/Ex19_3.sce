clear all; clc;
disp("Ex 19_3")
m=100 //kg
k_G=0.35//m
I_G=m*k_G^2
printf('\n\nMoment of inertia of the spool about its mass centre is = %0.2f kgm^2',I_G)
//Applying Impulse Momentum Principle, we get 2 equtions with integral terms in them and on solving them, we get :
disp("w_2=1.05 rad/sec in clockwise direction")

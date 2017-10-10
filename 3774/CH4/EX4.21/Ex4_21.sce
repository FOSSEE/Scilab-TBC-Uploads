// exa 4.21 Pg 126
clc;clear;close;

// Given Data
// Hole -
d=25;//mm
w=150;//mm
Kt=2.56;// stress concentration factor
P=50;// kN
sigma_max=100;// N/mm.sq
t=Kt*P*1000/(w-d)/sigma_max;// mm
printf('Calculating for hole - \n thickness is : %.2f mm',t)

// Notch -
d=30;//mm
w=120;//mm
w=150;//mm
Kt=2.3;// stress concentration factor
P=50;// kN
sigma_max=100;// N/mm.sq
t=Kt*P*1000/(w-d)/sigma_max;// mm
printf('\n Calculating for notch - \n thickness is : %.2f mm',t)
disp('Suggestion, Adopt t = 11 mm')

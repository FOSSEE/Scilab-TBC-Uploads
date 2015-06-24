clear;
clc;

//page no. 305
Q = 90;//gpm
d = 3;//in
l = 3000;//ft
V = Q/(60*7.48*0.25*%pi*(d/12)^2);
R_h = (d/12)/4;
C_hw = 140;
S = (V/(1.318*140*R_h^0.63))^(1/0.54);
h_L = S*l;
printf('The loss of head = %.1f ft of water',h_L);

//there is a minute error in the answer given in textbook

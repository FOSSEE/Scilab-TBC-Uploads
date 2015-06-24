clear all;
clc;
P = 1200;//axial pull in lb-wt
d1 = 1;//diameter of one end in inches
d2 = 0.5;//diameter of other end in inches
l = 10;//length of the rod in inches
E = 14*10^6;//modulus of elsticity in lb/in^2
del_l = 4*P*l/(%pi*E*d1*d2);//change in length in inches 
printf('The change in length of the rod is %.4f inches',del_l);

clear all;
clc;
d = 7/8;//diameter of the bar in inches
l = 10;//length in feets
P = 6;;//axial pull in tons
E = 13000;//modulus of elsticity in tons/in^2
m = 4;
A = 0.25*%pi*d^2;//in in^2
V = 0.25*%pi*d^2*l*12;//volume in cub.inches
p = P/A;//in tons/in^2
e = p/E;
del_l = e*l*12;//stretchof the bar in inches
Lateral_strain = e/m ;//lateral strain
del_d = Lateral_strain*d;//Contraction in diameter in inches
printf('The Contraction in diameter is %f inches',del_d);
k = e*(1-2/m);//(del_V)/(V)
del_V = k*V;//change in volume in cub.inch
printf('\n The change in volume is %.4f cub. inch',del_V);
W = 0.5*P*del_l;;//work done in stretching the bar in in-ton
printf('\n The work done in stretching the bar is %.4f in-ton',W);
//there is an error in the answer given in textbook.

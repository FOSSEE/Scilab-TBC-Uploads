clear ;
clc ;
d = 1;//diameter of the steel bar in inches
l = 12;//length of the steel bar in inches
d1 = 3/2;//external diameter in inches
d2 = 1;//internal diameter in inches
P = 5;//axial pull in tons
E_s = 30*10^6;//modulus of elasticity of steel in lb/in^2
E_b = 14*10^6;//modulus of elasticity of brass in lb/in^2
A_s = 0.25*%pi*d^2;//area of the steel section in in^2
A_b = 0.25*%pi*(d1^2-d2^2);//area of the brass section in in^2
P_b = (P/((E_s/E_b)*A_s+A_b))*A_b;//load resisted by the brass tube in tons
P_s = P-P_b;//bal;ance load resisted by the steel tube
e = (P_b/A_b)*2240/E_b ;//strain
printf('The strain e = %.4f',e);
del_l = e*l ;//extension of the bar in inches
printf('\n The extension of the bar = %.4f inches',del_l);
W = 0.5*P*del_l;//work done in stretching in inch-ton
printf('\n The work done in stretching is %.3f inch-ton',W);

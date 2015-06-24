//Bolt with reduced shank diameter
g = 1.50; // inch
d = 0.5; //inch
t = 0.25; //inch
d_r = 0.406; //inch
L = 13.5; //inch
ratio = ( (g*(d^2)) / ( ((g-t)*(d_r^2))+(t*(d^2))) ) //U2/U1
disp(ratio,"The energy absorbing capacity of the bolts with reduced shank diameter")
// Long bolts
ratio_1 = ( (((L-t)*(d_r^2))+(t*(d^2))) / ((2*(g-t)*(d_r^2))+2*(t*(d^2))) ); //U3/2U1
disp(ratio_1,"The energy absorbing capacity of the long bolts")


clear;
clc;
d = 3/8;// inches
n = 12;//no. of complete turns
D = 4;// inches
W = 50;// lb-wt
N = 12*10^6;// lb/in^2
T = W*0.5*D;// lb-inches
f_s = T*16/(%pi*d^3);//lb/in^2
delta = 64*W*(D^3 /8)*n/(N*d^4);// inches
E = 0.5*W*delta;// inch-lbs
printf('Shear stress induced is f_s = %d lb/in^2',f_s);
printf('\n Deflection under the pull is delta = %.3f inches',delta);
printf('\n Energy stored = %.3f lb-inches',E);

//there is a minute error in the answer given in textbook.

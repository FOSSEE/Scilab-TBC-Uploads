clc
//to calculate % purity of the sugar sample
theta=9.9 //optical rotation in degree
alpha=66 //specific roation of pure sugar solution in dm^-1(gm/cc)^-1
l=20 //length of tube in cm
c=10*theta/(l*alpha) //concentration of solution in gm/c.c
//it is given that 80 gm of impure sugar is dissolved in a litre of water
per=(c*100*10^3)/80 //here c is in gm/litre
disp("percentage of the sugar sample is per="+string(per)+"%")

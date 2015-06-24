clear;
clc;
//page no. 12

funcprot(0);
gamma = 1.4;
T1 = 60;//temperature of air in degree F
p1 = 14.7;//pressure in psia
k = 0.5;//(final volume/initial volume) = k
R = 53.3;//Engineering gas constant
gam1 = p1*(144/R)*(1/(460+T1));//lb/cuft
gam2 = gam1/k;//lb/cuft
p2 = (p1/(gam1^(gamma)))*(gam2^(gamma));// in psia
T2 = p2*(144/R)*(1/gam2);//in degree F
a1 = sqrt(gamma*32.2*R*(460+T1));// in fps
a2 = sqrt(gamma*32.2*R*(T2));// in fps
printf('Final pressure = %.1f psia\n Final temperature = %d degreeR \n Sonic velocity before compression = %d fps\n Sonic velocity after compression = %d fps',p2,T2,a1,a2);

//there are small errors in the answers given in textbook

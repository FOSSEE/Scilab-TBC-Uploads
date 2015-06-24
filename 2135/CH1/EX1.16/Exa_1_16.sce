//Exa 1.16
clc;
clear;
close;
format('v',7);

//Given Data :
//F=2*C;
FbyC=2;
disp("(F-32)/9=C/5");
C=32/(FbyC-9/5);//degree C
F=C*FbyC;//degree F
disp(F+460,"Temperature fluid in degree R : ");
disp(C+273,"Temperature fluid in degree K : ");

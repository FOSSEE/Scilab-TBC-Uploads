//Exa 1.28
clc;
clear;
close;
format('v',7);

//Given Data :
V1=2;//m^3
V2=4;//m^3
W=integrate('10^5*(V^2+6*V)','V',V1,V2);//Nm or J
W=W/1000;//KJ
disp(W,"Work done in KJ : ");

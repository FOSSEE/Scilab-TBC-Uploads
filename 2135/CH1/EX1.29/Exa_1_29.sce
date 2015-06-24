//Exa 1.29
clc;
clear;
close;
format('v',7);

//Given Data :
p1=3;//bar
V1=0.18;//m^3/Kg
p2=0.6;//bar
C=p1*10^5*V1^2;//Nm
V2=sqrt((p1/p2)*V1^2);//m^3Kg
W=integrate('C/V^2','V',V1,V2);//Nm/Kg
W=W/1000;//KJ/Kg
disp(W,"Work done in KJ/Kg : ");

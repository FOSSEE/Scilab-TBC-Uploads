//Exa 2.48
clc;
clear;
close;
format('v',7);

//Given Data : 
V1=1.5;//m^3
V2=0;//m^3
p=1.02;//bar
W=p*10^5*integrate('1','V',V1,V2);//J
disp(W/1000,"Work done by the air in KJ : ");

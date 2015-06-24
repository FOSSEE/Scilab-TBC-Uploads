//Exa 2.18
clc;
clear;
close;
format('v',8);

//Given Data : 
m=0.8;//Kg
p1=1;//bar
p2=5;//bar
T1=25+273;//kelvin
R=287;//KJ/kgK

W=m*R*T1*log(p1/p2);//J
disp(W/1000,"Work done in KJ : ");
U2subU1=0;//change in internal energy 
Q=W+U2subU1;//J
disp(Q/1000,"Heat Transfer in KJ : ");

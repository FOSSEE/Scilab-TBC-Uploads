//Exa 1.26
clc;
clear;
close;
format('v',6);

//Given Data :
m=1;//Kg
t=80;//degree C
mw=10;//Kg
t1=25;//degree C
delta_t=5;//degree C
t2=delta_t+t1;//degree C
Sw=4.187;//Kj/KgK
//m*S*(t-t2)=mw*Sw*(t2-t1)
S=mw*Sw*(t2-t1)/m/(t-t2);//Kj/KgK
disp(S,"Specific heat of metal in KJ/KgK :  ");

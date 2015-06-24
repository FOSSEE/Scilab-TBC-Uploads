//Exa 1.12
clc;
clear;
close;
format('v',7);

//Given Data :
t_ice=0;//degree centigrade
p_ice=1.5;
t_steam=100;//degree centigrade
p_steam=7.5;
//t=a*log(p)+b
//solving for a and b by matrix
A=[log(p_ice) 1;log(p_steam) 1];
B=[t_ice;t_steam];
X=A^-1*B;
a=X(1);
b=X(2);
p=3.5;//bar
t=a*log(p)+b;//degree C
disp(t,"Temperature scale in degree C : ");

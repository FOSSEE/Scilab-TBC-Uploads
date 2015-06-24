//Part A Chapter 3 Example 2
clc;
clear;
close;
format('v',7);
t_ice=0;//degree C
p_ice=3;//thermometric property
t_steam=100;//degree C
p_steam=8;//thermometric property
//t=a*log(p)+b/2
//solving by matrix multiplication for a and b
A=[log(p_ice) 1/2;log(p_steam) 1/2];
B=[t_ice;t_steam];
X=A^-1*B;
a=X(1);//constant
b=abs(X(2));//constant
p=6.5;//thermometric property
t=a*log(p)+b/2;//degree C
disp("Celsius temperature corresponding to thermometric property = "+string(t)+" degree C");

//Exa 5.6
clc;
clear;
close;
//Given data :
A=200;//gain without feedback(unitless)
Beta=0.25;//fraction ratio(unitless)
disp("We have, Af=A/(1+Beta*A)          eqn(1)");
disp("Differentiating it with respect to A, we get");
disp("dAf/dA=((1+Beta*A)-Beta*A)/(1+Beta*A)^2=1/(1+Beta*A)^2");
disp("dAf=dA/(1+Beta*A)^2          eqn(2)");
disp("Dividing eqn(2) by eqn(1),");
disp("dAf/Af=(dA/((1+Beta*A)^2))*((1+Beta*A)/A)=(1/(1+Beta*A))*(dA/A)");
//Given : Normal gain changes by 10 %, it means dA/A=10/100
dABYA=10/100;//change in gain
dAfBYAf=(1/(1+Beta*A))*(dABYA);//change in gain
disp(dAfBYAf,"Change in gain : ");
//Exa 1.13
clc;
clear;
close;
format('v',7);

//Given Data :
theta1_p1=273.16;//K
p_gauge1=32;//mm of Hg
p_atm=752;//mm of Hg
p_gauge2=76;//mm of Hg
P1=p_gauge1+p_atm;//mm of Hg
P2=p_gauge2+p_atm;//mm of Hg
theta2_p2=theta1_p1*(P2/P1);//in K
theta2_p2=theta2_p2-273;//degree C
disp(theta2_p2,"Temperature in degree C : ");

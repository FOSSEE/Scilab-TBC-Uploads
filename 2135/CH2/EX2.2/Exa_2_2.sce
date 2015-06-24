//Exa 2.2
clc;
clear;
close;
format('v',7);

//Given Data
Q1=2500;//KJ/Kg
Q2=1800;//KJ/Kg
Pdev=210;//MW
//Power developed = Heat transfered: Pdev=m*(Q1-Q2)
m=Pdev*1000/(Q1-Q2);//mass flow rate of steam in Kg/s
disp(m,"Mass flow rate of steam in Kg/s : ");

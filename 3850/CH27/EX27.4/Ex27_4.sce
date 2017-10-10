
//To calculate the Final Temperature of the air

//Example 27.4

clc;

clear;

T1=288;//Initial Temperature of Dry Air in Kelvin

p1=10;//Initial pressure of Dry Air in atm

p2=1;//Final pressure of Dry Air in atm

gama=1.41;//The ratio Cp/Cv

T2=T1*(p2/p1)^((gama-1)/gama);//Final Temperature of Gas

printf("The final temperature of gas=%f K",T2);

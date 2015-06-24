//Exa 1.27
clc;
clear;
close;
format('v',6);

//Given Data :
m=500;//Kg
t1=45;//degree C
t0=5;//degree C
CP=4.18;//KJ/Kg-degree C
Qdot=41.87;//MJ/hr
Q=m*CP*(t1-t0);//KJ
Q=Q/1000;//MJ
Time=Q/Qdot;//hrs
disp(Time,"Time required in hours : ");

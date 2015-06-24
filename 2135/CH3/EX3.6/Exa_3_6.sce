//Exa 3.6
clc;
clear;
close;
format('v',6);

//Given Data :
T1=23+273;//K
COP_HP=2.5;
HeatLost=60000;//KJ/hr
HeatGenerated=4000;//KJ/hr
Q1=HeatLost-HeatGenerated;//KJ/hr
W=Q1/COP_HP;//KJ/hr
W=W/3600;//KJ/s or KW
disp(W,"Power input in KW : ");

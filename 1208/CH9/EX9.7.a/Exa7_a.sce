//Exa 7(i)
clc;
clear;
close;
// given data :
//mix ratio is not same
SQa=10//in Kgs
AQa=10//in Kgs
SPa=8//in rupees per Kgs
APa=7//in rupees per Kgs
SQb=8//in kg
AQb=9//in Kg
SPb=6//in rupees per Kg
APb=7//in rupees per Kg
SQc=4//in kg
AQc=5//in Kg
SPc=12//in rupees per Kg
APc=11//in rupees per Kg
//(1)  Material cost variance
MCVa=(SQa*SPa)-(AQa*APa);//in rupees
MCVb=(SQb*SPb)-(AQb*APb);//in rupees
MCVc=(SQc*SPc)-(AQc*APc);//in rupees
disp(MCVa,"MCVa=");
disp(MCVb,"MCVb=");
disp(MCVc,"MCVc=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")
//Exa 7(iv)
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
//(4)  Material mix variance
RSQa=(SQa*24)/(22);
RSQb=(SQb*24)/(22);
RSQc=(SQc*24)/(22)
MMVa=SPa*(RSQa-AQa);
MMVb=SPb*(RSQb-AQb);
MMVc=SPc*(RSQc-AQc);
disp(MMVa,"MMV=");
disp(MMVb,"MMV=");
disp(MMVc,"MMV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");
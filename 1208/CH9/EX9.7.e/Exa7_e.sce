//Exa 7(v)
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
//(5)  Material sub usage variance
MSUVa=SPa*(SQa-RSQa);
MSUVb=SPb*(SQb-RSQb);
MSUVc=SPc*(SQc-RSQc);
disp(MSUVa,"MSUV=");
disp(MSUVb,"MSUV=");
disp(MSUVc,"MSUV=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ");
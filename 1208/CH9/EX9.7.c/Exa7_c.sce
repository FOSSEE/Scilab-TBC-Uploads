//Exa 7(iii)
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
//(2)  Material price variance
MPVb=AQb*(SPb-APb);//in rupees
MPVa=AQa*(SPa-APa);//in rupees
MPVc=AQc*(SPc-APc);//in rupees
disp(MPVa,"MPVa=");
disp(MPVb,"MPVb=");
disp(MPVc,"MPVc=");
disp("Note :  ")
disp("Negative variances indicate adverse value   ");
disp("Positive variances indicate favourable value   ")
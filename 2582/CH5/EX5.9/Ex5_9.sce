//Ex 5.9
clc;clear;close;
format('v',5);
//vo/v1=-2;//Gain for -ve inputs
voBYvi=-2;//Gain for -ve inputs
//vo/v1=0;//Gain for non -ve inputs
Rin=100;//kohm
R1=100;//kohm(R1=Rin)
R2=-R1*voBYvi;//kohm
disp(R2,R1,"Values of R1 & R2(kohm) are : ");

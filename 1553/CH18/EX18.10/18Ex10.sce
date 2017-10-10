//chapter 18 Ex 10

clc;
clear;
close;
sTrain=50; t=9; lTrain=280;
sRelative=(lTrain/t)/(5/18);
sGoods=sRelative-sTrain;
printf("The speed of goods train is %d km/hr",sGoods);

//chapter 18 Ex 9

clc;
clear;
close;
sTrain=54; tTrainP=20; tTrainM=12; sMan=6;
sRelative=(sTrain-sMan)*5/18;   //Difference since opposite in direction
lTrain=sRelative*tTrainM;
lTotal=tTrainP*sTrain*5/18;
lPlatform=lTotal-lTrain;
printf("The length of train is %d m and length of platform is %d m",lTrain,lPlatform);

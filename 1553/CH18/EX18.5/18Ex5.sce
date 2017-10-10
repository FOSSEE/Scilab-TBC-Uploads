//chapter 18 Ex 5

clc;
clear;
close;
sTrain=59; lTrain=220; sMan=7;
sRelative=(sTrain+sMan)*5/18;  //addition of speed since opposite direction
t=lTrain/sRelative;
printf("The time taken by train to pass the man is %d sec",t);

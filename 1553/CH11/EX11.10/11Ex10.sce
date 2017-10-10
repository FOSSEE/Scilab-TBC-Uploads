//Ex 10

clc;
clear;
close;
n1=6;c=10;
n2=4;s=6;
n=double(lcm(int32([4,6])));   //Number of bananas
cp=(c/n1)*n;
sp=(s/n2)*n;
lossPercent=(cp-sp)/cp*100;
printf("The loss is %d percent",lossPercent);

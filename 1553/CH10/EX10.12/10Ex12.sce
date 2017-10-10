//chapter 10 Ex 12

clc;
clear;
close;
num=81.472;
nearNum=81.5; //nearest floating number
Error=nearNum-num;
percent=(Error/num)*100;
printf("The percentage error is %0.3f percent",percent);

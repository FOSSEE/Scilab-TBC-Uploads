//Ex 26

clc;
clear;
close;
cp=100;
discount=25;
mPercent=50;
mp=cp+mPercent;
sp=((100-discount)*mp)/100;
gainPercent=(sp-100);
printf("The gain is %3.2f percent",gainPercent);

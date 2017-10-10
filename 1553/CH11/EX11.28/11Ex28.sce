//Ex 28

clc;
clear;
close;
cp=100;
discount=5;
gainPercent=33;
sp=cp+gainPercent;
mp=sp/((100-discount)/100);
mPercent=mp-cp;
printf("The marked price is %d percent above CP",mPercent);

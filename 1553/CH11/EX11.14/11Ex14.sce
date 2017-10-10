//Ex 12

clc;
clear;
close;
Error=40;
true_value=1000;
gainPercent=(Error/(true_value-Error))*100;
printf("The gain is %3.2f percent",gainPercent);

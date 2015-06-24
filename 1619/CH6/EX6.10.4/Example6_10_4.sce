//Example 6.10.4  page 6.28

clc;
clear;

N=10;
L=0.5;
alpha=0.4;
Lthru=0.9;
Lc=1;
Ltap=10;
Li=0.5;
Total_loss= N*(alpha*L +2*Lc +Lthru+Li)-(alpha*L)-(2*Lthru)+(2*Ltap);
printf("The total loss in the coupler is :%d dB",Total_loss);

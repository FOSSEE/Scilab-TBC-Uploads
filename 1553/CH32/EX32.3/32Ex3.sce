//Chapter 32 Ex 3

clc;
close;
clear;
TD=250; SI= 375; t=3;
sumdue=(SI*TD)/(SI-TD);
R=(100*SI)/(sumdue*t);
mprintf("The sum and the rate are Rs.%d and %.2f percent",sumdue,R);

//chapter 14
//example 14.5
//page 442
clear all;
clc ;
//given
Av=100;
Av=20*log10(Av);//voltage gain in db
printf("\nvoltage gain=%d db",ceil(Av));
//f2 occurs at(upper cutoff  frequency)
M=ceil(Av+7.7);
f2=5;//from intersection of frequency response and M=48db of 741
printf("\nupper cutoff frequency for 741=%d khz",f2)
f2=200;//from intersection of frequency response and M=48db of 709
printf("\nupper cutoff frequency for 709=%d khz",f2)

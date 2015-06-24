//Ex:2.18
clc;
clear;
close;
fr=110*10^6;// frequency in Hz
Q=70;// quality factor
df=fr/Q;// bandwidth in MHz
printf("The bandwidth= %f MHz", df/10^6);
printf("\n The answer is wrong in the textbook");
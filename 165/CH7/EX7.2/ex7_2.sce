//Example 7.2
clc;
//Frequency of the signal
n=4;                 //No of division/cycle
time_div=2*10^-6;    //Time divsion Control
TP=time_div*n;       //Period of the signal
f=1/TP;              //Frequency of the signal
printf('\nFrequency of the signal is %d',f)
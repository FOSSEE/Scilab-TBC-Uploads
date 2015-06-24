
//Exa:9.2
clc;
clear;
close;
//Given:
//Output = (sin(wa)t)(sin(wc)t)
//         =[sin(2pi5*10^6t)][sin(2pi70*10^6t)] 
//         =1/2[cos(2pi*65*10^6t)-cos(2pi*75*10^6t)] `
w1=65;//in MHz
w2=75;//in MHz
F=w2-w1;
printf("\n Minimum lower side frequecy = %fMHz",w1);
printf("\n Maximum upper side frequency = %fMHz",w2);
printf("\n Minimum nyquist bandwidth = %fMHz",F);
printf("\n Baud rate = %fMegabaud",F);
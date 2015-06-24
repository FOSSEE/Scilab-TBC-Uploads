//clear//
//Caption:Comparison of M-ary PCM with ideal system (Channel Capacity Theorem)
//Example5.2:Comparison of M-ary PCM system
//Channel Capacity theorem
clear;
close;
clc;
P_NoB_dB = [-20:30];//Input signal-to-noise ratio P/NoB, decibels
P_NoB = 10^(P_NoB_dB/10);
k =7; // for M-ary PCM system;
Rb_B = log2(1+(12/k^2)*P_NoB);//bandwidth efficiency in bits/sec/Hz
C_B = log2(1+P_NoB);//ideal system according to Shannon's channel capacity theorem
//plot
a =gca();
a.data_bounds = [-30,0;40,10];
plot2d(P_NoB_dB,C_B,5)
plot2d(P_NoB_dB,Rb_B,5)
poly1= a.children(1).children(1);
poly1.thickness =2;
poly1.line_style = 4;
xlabel('Input signal-to-noise ratio P/NoB, decibels')
ylabel('Bandwidth efficiency, Rb/B, bits per second per hertz')
title('Figure 5.9 Comparison of M-ary PCM with the ideal ssytem')
legend(['Ideal System','PCM'])


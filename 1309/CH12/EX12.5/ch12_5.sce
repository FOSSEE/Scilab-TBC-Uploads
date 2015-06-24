clc;
clear;
printf("\t\t\tChapter12_example5\n\n\n");
//  Determination of the heat exchanged between the two plates
// The view factor can be found with the crossed-string method
// from figure 12.13(b)
ac=1;
bd=1;
ad=(9+1)^0.5;
bc=ad;
crossed_strings=ad+bc;
uncrossed_strings=ac+bd;
L1_F12=(1/2)*(crossed_strings-uncrossed_strings);
printf("\nThe Product L1F12=%.2f ft",L1_F12);
L1=3;
F12=L1_F12/L1;
printf("\nThe view factor F12=%.2f",F12);
sigma=5.67e-8; // Stefan-Boltzmann constant
T1=560;
T2=460;
q12_A1=sigma*(T1^4-T2^4)*F12;
printf("\nThe heat transfer rate is %.2e W/sq.m",q12_A1);

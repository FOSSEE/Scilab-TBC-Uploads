clc;
clear;
Nf1=7; //Noise figure of first stage in dB
F1=5.01; //first power ratio
Nf2=25; //Noise figure of second stage in dB
F2=316.22; //second power ratio
pG=15; //power gain in dB
G1=31.62; //power ratio

F=F1+(F2-1)/G1;

disp("overall noise factor");
disp(F);
disp("Overall noise factor in dB")
disp(10*log10(F)); 

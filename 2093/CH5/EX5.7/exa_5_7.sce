// Exa 5.7
clc;
clear;
close;
// Given data
Av= 50;
Avf= 25;
// Formula Avf= Av/(1+Av*Bita)
Bita= 1/Avf-1/Av;
// Part(i)
Av=50;
Avf= 40;
Perc_reduction= (Av-Avf)/Av*100;// Percentage of reduction in stage gain in %
disp(Perc_reduction,"Without feedback, percentage of reduction in stage gain in % is : ")

// Part(ii)
Av= 40;
Avf= 25;
gain_with_neg_feed= Av/(1+Bita*Av);
Perc_reduction= (Avf-gain_with_neg_feed)/Avf*100;// in %
disp(Perc_reduction,"With feedback, percentage reduction in stage gain in % is : ")


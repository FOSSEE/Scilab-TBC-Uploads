// Exa 5.6
format('v',7);
clc;
clear;
close;
// Given data
Av= 100;
Avf= 50;
// Formula Avf= Av/(1+Av*Bita)
Bita= 1/Avf-1/Av;
disp(Bita,"The vlaue of bita is ")

// Part(ii)
Avf= 75;
// Formula Avf= Av/(1+Av*Bita)
Av= Avf/(1-Bita*Avf)
disp(Av,"Value of amplifier gain is : ")

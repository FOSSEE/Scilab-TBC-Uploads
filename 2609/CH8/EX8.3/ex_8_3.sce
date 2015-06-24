////Ex 8.3
clc;
clear;
close;
format('v',9);
fmax=160;//kHz
fr=4;//Hz(Resolution)
M=2.4;//unitless
fclk=M*fmax;//kHz
disp(fclk,"Clock frequency(kHz)");
N=log(fclk*1000/fr)/log(2);//no. of bits
disp(round(N),"No. of bits");

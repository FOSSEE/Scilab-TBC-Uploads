//Example No. 3.10.1
clc;
clear;
close;
format('v',6);

K=90;//%//radiation efficiency
Pin=10;//W
Prad=(K/100)*Pin;//W
disp(Prad,"Radiated power in Watts : ");

////Ex 13.2
clc;
clear;
close;
format('v',6);
VNL=18;//V
VFL=17.8;//V
IL=50;//mA
LR=(VNL-VFL)*100/VFL;//%(Line Regulation)
LdR=LR/IL;//%/mA(Load Regulation)
disp(LdR,"Load Regulation(%/mA)");

clc;
//e.g 34.4
VNL=5;
IL=20*10**-3;
LR=10*10**-6;
//LR=(VNL-VFL)/IL;
VFL=VNL-IL*LR;
disp('V',VFL*1,"VFL=");

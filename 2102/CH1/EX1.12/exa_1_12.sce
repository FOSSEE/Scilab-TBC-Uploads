// Exa 1.12
clc;
clear;
close;
// Given data
vol= 10^-4;// volume of the rod in m^3
i=0.5;// in amp
n= 5;// turns/cm
n= n*10^2;// turns/meter
miu_r= 1000;
//B= miu_o*(H+I)
// Where I= Bo/miu_o-H and B= miu*H = miu_r*miu_o*H
// Then I= miu_r*miu_o*H/miu_o - H = (miu_r-1)*H
// H= n*i
I= (miu_r-1)*n*i;// in amp/meter
MagMoment= I*vol;// in Am^2
disp(round(MagMoment),"Magnetic moment in Am^2 is : ")

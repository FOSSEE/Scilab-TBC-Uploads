// Exa 8.9
clc;
clear;
close;
//given data
V_REF= 10;// in V
MSB2= V_REF/2;// in volt
disp(MSB2,"The second MSB weight in volt")
MSB3= V_REF/4;// in volt
disp(MSB3,"The third MSB weight in volt")
MSB4= V_REF/8;// in volt
disp(MSB4,"The forth MSB (or LSB) weight in volt")
DAC= MSB4;
disp(DAC,"The resolution of the DAC in volt")
FullScaleOutput= V_REF+MSB2+MSB3+MSB4;//in volt
disp(FullScaleOutput,"Full scale output in volt");
disp("If Rf is reduced to one-forth, each input will be 4 times smaller than the values above. Thus the full scale output will be reduced")
disp(" in the same ratio and becomes "+string(FullScaleOutput/4)+" volt")

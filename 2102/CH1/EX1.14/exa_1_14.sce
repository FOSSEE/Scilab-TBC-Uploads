// Exa 1.14
clc;
clear;
close;
// Given data
fie_B= 2*10^-6;// in weber
A= 10^-4;// in m^2
N= 300;// number of turns
l=30;//in cm
l=l*10^-2;//in meter
i=0.032;// in amp
miu_o= 4*%pi*10^-7;
B=fie_B/A;// in weber/meter^2
disp(B,"Flux density in weber/meter^2 is : ")
H= N*i/l;// in amp-turn/meter
disp(H,"Magnetic intensity in amp-turn/meter is :")
miu= B/H;// in weber/amp-meter
disp(miu,"Pemeability in weber/amp-meter is :")
miu_r= miu/miu_o;
disp(miu_r,"Relative permeability is : ")

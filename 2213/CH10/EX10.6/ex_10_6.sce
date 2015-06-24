//Example 10.6: Power generated
clc;
clear;
close;
//given data :
OD=640;// voltage represent by phasor OD
R=0.5;// reactor in ohm
Ia=OD/R;
V=400;// in volts
alfa=38.66;//Phase angle in degree
P=(V*Ia*cosd(alfa))*10^-3;
disp(P,"Power generated,P(kW) = ")

//Exa 5.1
clc;
clear;
close;
//For Single Turn:
disp("A=%pi*a^2");
disp("Putting a=lambda/25 we get : A=%pi*lambda^2/625");
disp("Radiation Resistance Rr=31171.2*[A/lambda^2]^2");
disp("Putting A=%pi*lambda^2/625 ");
Rr_1=31171.2*[%pi/625]^2;//in Ohm
disp(Rr_1,"radiation Resistance(in Ohm) for single turn : ");

//For Eight Turn:
N=8;//no. of turns
Rr=Rr_1*N^2;//in Ohm
disp(Rr,"radiation Resistance(in Ohm) for Eight turn : ");
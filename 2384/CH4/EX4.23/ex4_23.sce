// Exa 4.23
clc;
clear;
close;
format('v',6)
// Given data
V=230;// in V
f= 50;// in Hz
Z1= 10*expm(-30*%i*%pi/180);// in ohm
Z2= 20*expm(60*%i*%pi/180);// in ohm
Z3= 40*expm(0*%i*%pi/180);// in ohm
Y1= 1/Z1;// in S
Y2= 1/Z2;// in S
Y3= 1/Z3;// in S
Y= Y1+Y2+Y3;// in S
phi= atand(imag(Y),real(Y));// in °
Z=1/Y;// in ohm
P= V^2*abs(Y);// in W
disp("The circuit admittance is : "+string(abs(Y))+" mho");
disp("The circuit impedance is : "+string(abs(Z))+" Ω");
disp(P,"The power consumed in W is : ")
disp("The power factor is : "+string(cosd(phi))+" lead")

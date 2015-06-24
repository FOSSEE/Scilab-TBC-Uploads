//Exa 6.6
clc;
clear;
close;
format('v',8);
//Given data :
A=0.945*expm(%i*1.02*%pi/180);//Auxiliary constant
D=A;//Auxiliary constant
B=82.3*expm(%i*73.03*%pi/180);//ohm//Auxiliary constant
C=0.001376*expm(%i*90.4*%pi/180);//S//Auxiliary constant
//part (i)
Y=C;//S
Z=2*(A-1)/C;//ohm
disp("For equivalent T-network : ");
disp("Shunt admittance in S, magnitude is "+string(abs(Y))+" and angle in degree is "+string(atand(imag(Y),real(Y))));
disp("Impedance in ohm, magnitude is "+string(abs(Z))+" and angle in degree is "+string(atand(imag(Z),real(Z))));
disp("For equivalent pi-network : ");
Z=B;//ohm
disp("Series Impedance in ohm, magnitude is "+string(abs(Z))+" and angle in degree is "+string(atand(imag(Z),real(Z))));
Y=2*(A-1)/B;//S
disp("Shunt admittance in S, magnitude is "+string(abs(Y))+" and angle in degree is "+string(atand(imag(Y),real(Y))));
//For T-Network Value of Z is wrog in the book.

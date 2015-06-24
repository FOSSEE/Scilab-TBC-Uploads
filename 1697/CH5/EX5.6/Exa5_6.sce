//Exa 5.1
clc;
clear;
close;
disp("The emf applied to the end terminals is V. This is being divided in two equal half in each dipole. Hence voltage in each dipole is V/2.");
disp("By nodal analysis : ");
disp("V/2=I1*Z11+I2*Z12       eq(1)");
disp("Where I1,I2 are currents flowing at terminals of dipole1 and dipole 2");
disp("Z11 and Z12 ares self impedences of dipole1 and mutual impedence between dipole1 and dipole2 respectively.");
disp("I1=I2");
disp("V/2=I*(Z11+Z12)       eq(2)");
disp("Both the dipoles are kept lambda/100 apart (i.e., they are very close to each other.)")
disp("So, Z11=Z12");
disp("From eq(1) and eq(2) : ");
disp("V/2=I1*(2*Z11)");
disp("Z=V/I1=4*Z11");
Z11=73 ;//Resistance for a dipole in Ohm 
disp("Z=4*73 ohm");
disp("Z=292 ohm");
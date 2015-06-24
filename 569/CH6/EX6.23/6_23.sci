// Calculating the resistance of unknown resistance
clc;
R2=800;
R3=800;
R4=800;
Rm=100;
R=800;
ei=4;
im=0.8*10^-6;
dR=(im*R^2)*(4*(1+Rm/R))/ei;
R1=R+dR;
disp(R1,'Resistance of unknown resistor (ohm)=')

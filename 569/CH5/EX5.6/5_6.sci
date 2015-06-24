//Calculating the output voltage
clc;
RAB=125;
Rtotal=5000;
R2=75/125*Rtotal;
R4=2500;
ei=5;
eo=[(R2/Rtotal)-(R4/Rtotal)]*ei;
disp(eo,'output voltage (V)=')
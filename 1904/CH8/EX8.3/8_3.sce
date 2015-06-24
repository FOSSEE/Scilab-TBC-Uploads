//To determine the power factors of a 2.4 kV phase circuit feeder
//Page 396
clc;
clear;

V=2.4; //Voltage in kV
I=200; //Load Current
P=360; //Real Load in kW
S1=V*I; //Total Load in kVA
pf1=P/S1; //Power Factor
Q1=S1*sind(acosd(pf1)); //Reactive Load

Qc=300; //Capacitor Size

Q2=Q1-Qc; //The New Reactive Load
pf2=P/sqrt((P^2)+((Q1-Qc)^2)); //Improved Power Factor

printf('\na) The Uncorrected power factor and reactive load is %g and %g kVAr\n',pf1,Q1)
printf('b) The New Corrected factor after the introduction of capacitor unit is %g\n',pf2)

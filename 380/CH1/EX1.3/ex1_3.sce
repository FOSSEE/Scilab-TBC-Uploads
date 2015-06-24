//Caption:Finding the value of capacitor
//Ex no.1.3
clc;
clear;
close;
I=10;//Current drawn by the load (in Amperes)
pf1=0.5;//lagging power factor
pf2=0.8;
Q1=acosd(pf1);
Q2=acosd(pf2);
I_L=10*(cosd(-Q1)+%i *sind(-Q1));//in Amperes
V=120;//source voltage (in Volts)
f=60;//frequency of source (in Hertz)
//Refer to fig 1.6(b)
//I_Lc=I_L+I_c
S=V*conj (I_L);//complex power absorbed by load (in Watts)
//On connecting capacitor across load current (I) have 0.8pf lagging
I_Lco=real (S)/(V*pf2);// current supplied by load after connecting capacitor (in Amperes)
I_Lc=I_Lco*(cosd(-Q2)+%i*(sind(-Q2)));// in Amperes
I_c=I_Lc-I_L;//in Amperes
Z_c=V/I_c;//capacitive impedance (in Ohms)
//Z_c=-jX_c
X_c=Z_c/(-%i);//Capacitive reactance
C=1/(2*%pi*f*X_c);
disp(real (C),'Value of capacitance (in Farad) is=')
//Exa 6.3
clc;
clear;
close;
//given data :
format('v',6);
Pint=28.4;//in mw
Pint=Pint*10^-3;//in Watts
I=60;//in mA
I=I*10^-3;//in A
h=6.63*10^-34;//constant
c=3*10^8;//speed of light in m/s
q=1.6*10^-19;//in coulamb
//Tr=Tnr
//Formula : Pint=(Tnr/(Tr+Tnr))*(I*h*c/(q*lambda))
//as Tr=Tnr : (Tnr/(Tr+Tnr))=1/2
lambda=(1/2)*(I*h*c/(q*Pint));//in m
disp(lambda*10^6,"Peak emission waelength from the device in micro meter : ");
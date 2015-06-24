//Exa 5.11
clc;
clear;
close;
//Given data :
A=800;//gain(unitless)
f1=40;//in Hz
f2=16;//in kHz
Beta=2/100;//feedback fator (unitless)
//Formula : Af=A/(1+A*Beta)
Af=A/(1+A*Beta);//gain with feedback(unitless)
disp(Af,"Voltage gin with feedback : ");
BW=f2*10^3-f1;//Bandwidth of amplifier in Hz
disp(BW*10^-3,"Bandwidth of amplifier in kHz : ");
f1_f=f1/(1+A*Beta);//in Hz
f2_f=f2*(1+A*Beta);//in kHz
BW_f=f2_f*10^3-f1_f;//Bandwith after feedback in Hz
disp(round(BW_f*10^-3),"Bandwith after feedback in KHz : ");
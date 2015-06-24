// Example  1.73

clc;clear;close;

// Given data
format('v',6);
StatorLoss=2;//in KW
StatorInput=90;//stator input in KW
S=4;//in %

//calculations
S=S/100;//slip
StatorOutput=StatorInput-StatorLoss;//in KW
Pri=StatorOutput;//rotor input in KW
Pcr=S*Pri;//in KW
disp(Pcr,"Rotor Copper Loss in KW : ");
Pm=Pri-Pcr;//in KW
disp(Pm,"Rotor mechanical power developed in KW : ");

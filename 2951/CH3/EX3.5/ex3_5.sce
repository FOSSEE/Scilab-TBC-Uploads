clc;
clear;
fLSB1=395;
fLSB22=397.5;// Two  LSB frequencies in kHz
E1=4;
E2=3;//peak voltages of modulating signal in V
R=60;//resistor in ohms

Et=sqrt(E1^2+E2^2);

Erms=Et*0.707;

PEP=((Et*0.707)^2)/R; //Pak Envelope Power in W

Avg_Power=PEP/2;

disp(PEP,"Peak Envelope Power(in W)");
disp(Avg_Power,"Average Power(in W)");

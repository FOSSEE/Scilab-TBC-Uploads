//Example 6.11

clear;

clc;

C=(5/%pi)*10^(-9);

R1=10*10^3;

R2=30*10^3;

GBP=1*10^6;

Hreler=0.01;//Departure of H from Hideal

ft=1*10^6;

fx=ft/(1+(R2/R1));

fmax=((1/((1-Hreler)^2)-1)^(1/2))*fx;

f0=1/(2*%pi*R1*C);

fmin3dB=(1/((1/(f0^2))-(1/(fx^2))-(1/((f0^2)*(fx^2)))))^(1/2);//f(-3dB)

f3dBer=((fmin3dB-f0)/fmin3dB)*100;

printf("Percentage Deviation of cut off frequency=%.2f",f3dBer*2);
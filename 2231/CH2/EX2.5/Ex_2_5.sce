//Example 2_5
clc;
clear;close;

//Given data: 
Vo=150;//V
R=30;//ohm
alfa=45;//degree

//Solution :
Vdc=sqrt(2)*Vo/%pi*(1+cosd(alfa));//V
disp(Vdc,"Average dc Voltage(V) : ");
Iavg=Vdc/R;//A
disp(Iavg,"Average load current(A) : ");
Vrms=sqrt(2)*Vo*sqrt((180-alfa)/2/180+sind(90)/4/%pi   );//V
disp(Vrms,"rms load Voltage(V) : ");
Irms=Vrms/R;//A
disp(Irms,"rms load current(A) : ");

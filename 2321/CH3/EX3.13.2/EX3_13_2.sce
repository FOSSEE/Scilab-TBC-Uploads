//Example No. 3.13.2
clc;
clear;
close;
format('v',4);
Prad=1000;//W(Radiated Power)
Rr=300;//Ω(Radiation Resistance)
Irms=sqrt(Prad/Rr);//A(Current Drawn)
disp(Irms,"Current drawn in A : ");

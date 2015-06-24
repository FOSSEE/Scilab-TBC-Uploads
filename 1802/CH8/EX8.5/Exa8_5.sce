//Exa 8.5
clc;
clear;
close;
//given data
d=2;//in cm
D=2.5*2;//in cm
d1=(5/4)*d;//in cm
d2=(5/3)*d;//in cm
gmax=40;//in KV/cm
PeakVoltage=(gmax/2)*[d*log(d1/d)+d1*log(d2/d1)+d2*log(D/d2)];//in KV
disp(PeakVoltage/sqrt(2),"The safe Working Potential in KV : ");
clc
r1=0.001; //m
r2=0.0018; //m
k=0.12; //W/m 0C
h0=35; //W/m^2 0C

rc=k/h0;

thickness=(rc-r1)*10^3; //mm
disp("Critical thickness of insulation =")
disp(thickness)
disp("mm")

//Percentage change in heat transfer rate :
//Case I : The heat flow through an insulated wire

//Q1=2*%pi*L*(t1-tair)/(log(r2/r1)/k + 1/h0/r2)

//Case II : The heat flow through an insulated wire when critical thickness is used is given

//Q2=2*%pi*L*(t1-tair)/(log(rc/r1)/k + 1/h0/rc)

//%increase=(Q2-Q1)/Q1*100
%increase=(1/(log(rc/r1)/k + 1/h0/rc)-1/(log(r2/r1)/k + 1/h0/r2))/(1/(log(r2/r1)/k + 1/h0/r2))*100;
disp("Percentage change in heat transfer rate =")
disp(%increase)
disp("%")
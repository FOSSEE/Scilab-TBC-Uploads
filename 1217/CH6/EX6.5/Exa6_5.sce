// Exa 6.5
clc;
clear;
close;
// given data 
fc=1;//in KHz
AF=2;//unitless
// let C=0.01 uF
C=0.01;//in uF
R=(1/(2*%pi*fc*1000*C*10^-6))/1000;//in Kohm
disp("AF=1+RF/R1=2 gives RF=R1=Rdash")
//For Bias compensation
//Rbc=R1*RF/(R1+RF) ohm
disp("Bias compensation :R=R1*RF/(R1+RF)=Rdash/2 ohm");
//Rdash=R1=RF=2*R;//in ohm
Rdash=2*R;//in ohm
R1=2*R;//in ohm
RF=2*R;//in ohm
R1=RF;//in kohm
disp("Component values are :");
disp(R1,"R1=RF in Kohm is ;");
disp(R,"R in Kohm is ;");
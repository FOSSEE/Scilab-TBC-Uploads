// Exa 6.3
clc;
clear;
close;
// given data 
fc=2;//in KHz
AF=2;//unitless
// let C=0.01 uF
C=0.01;//in uF
R=(1/(2*%pi*fc*1000*C*10^-6))/1000;//in Kohm
R=ceil(R);
// Bias compensation Rbc
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
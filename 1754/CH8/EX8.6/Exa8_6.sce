//Exa 8.6
clc;
clear;
close;
//Given data :
R1=50;//in kohm
R1=R1*10^3;//in ohm
C1=0.001;//in uF
C1=C1*10^-6;//in F
R2=1;//in kohm
R2=R2*10^3;//in ohm
C2=0.01;//in uF
C2=C2*10^-6;//in F
//Part (i)
//Formula : f=1/(2*%pi*sqrt(C1*C2*R1*R2))
f=1/(2*%pi*sqrt(C1*C2*R1*R2));//in Hz
disp(f/1000,"Frequency of oscillations in kHz : ");
//Part (ii)
CurrentGain=1+C2/C1+R1/R2;//unitless
disp(CurrentGain,"Current Gain : ");
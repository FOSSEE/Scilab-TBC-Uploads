//Exa 5.8
clc;
clear;
close;
//Given data :
A=10000;//gain without feedback(unitless)
Zi=10;//in kOhm
Zo=100;//in Ohm
R1=2;//in Ohm
R2=18;//in Ohm
//Part (i) :
Beta=R1/(R1+R2);//feedback fraction(unitless)
disp(Beta,"(i) Feedback Fraction :");
//Part (ii) :
Af=A/(1+A*Beta);//Gain with negative feedback(unitless)
disp(round(Af),"(ii) Gain with negative feedback :");
//Part (iii) :
inputVoltge=0.5;//in mV
outputVoltge=Af*inputVoltge;//in mV
disp(round(outputVoltge),"(iii) Output Voltage in milli volts :");
//Part (iv) :
Zif=Zi*(1+Beta*A);//in kOhm
disp(Zif*10^-3,"(iv) Input impedance of feedback amplifier in Mohm : ");
//Part (v) :
Zof=Zo/(1+Beta*A);//in kOhm
format('v',4);
disp(Zof,"(v) Output impedance with feedback in Ohm : ");
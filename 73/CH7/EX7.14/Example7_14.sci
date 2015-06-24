//Chapter 7_Operational Amplifier Characteristics
//Caption : Effect on Output Voltage
//Example7.14: For the noninverting OP-Amp with input resistance R1 nad feedback resistance R2 find the effect on output voltage Vo because of the common mode voltage Vcm when the input voltage Vs changes by 1V. Given CMRR=70 dB.
//Solution:
clear;
clc;
CMRR=70;//Common Mode Rejection Ratio in dB
// since CMRR=20*log(Vcm/Vdm) dB
//so Vdm=Vcm/10^(CMRR/20)
//since output voltage of OP-Amp is Vo=(R1+R2)*Vdm/R1=(R1+R2)*Vcm/(R1*10^(CMRR/20))
R1=100;//assuming input resistance standard value in kilo Ohm
R2=900;//assuming feedback resistance standard value in kilo Ohm
Vs=1;//change in input voltage given in question
Vcm=Vs;//since change in input voltage is applied to noninverting input and through the feedback to the inverting iput of the Op-Amp as well.
Vo=(R1+R2)*Vcm/(R1*10^(CMRR/20))
disp('mV',abs(Vo)*10^3,'change in output voltage due to common mode Voltage(Vcm) is:')
//Note:
// CMRR,Vdm,Vo may be of either polarity. Here absolute value is calculated
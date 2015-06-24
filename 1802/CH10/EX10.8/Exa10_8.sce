//Exa 10.8
clc;
clear;
close;
//Given Data :
format('v',7);
f=50;//in Hz
V=400;//in volts
MotorOut=20;//in HP(Motor output)
MotorOut=MotorOut*735.5;//in Watts(Induction Motor output)
CorrectPF=0.85;//in fraction
MotorIn=MotorOut/(CorrectPF*1000);//in KW
cosfi_1=0.7071;//powerfactor
tanfi_1=tand(acosd(cosfi_1));//unitless
Pr1=MotorIn*tanfi_1;//in KVAR
cosfi_2=0.85;//unitless
tanfi_2=tand(acosd(cosfi_2));//unitless
Pr2=Pr1*tanfi_2;//in KVAR
Prc=Pr1-Pr2;//in KVAR
Prc_ph=Prc/3;//in KVAR
C=Prc_ph*10^3/(2*%pi*f*V^2)
disp(C*10^6,"Rating of each capacitor per phase(in uF)");
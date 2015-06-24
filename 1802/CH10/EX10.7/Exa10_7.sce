//Exa 10.7
clc;
clear;
close;
//Given Data :
format('v',7);
//(i)
IMO=200;//in HP(Induction Motor output)
IMO=IMO*0.7355;//in KW(Induction Motor output)
LagEff=90;//in %
LagEff=90/100;//in fraction
MotorIn=IMO/(LagEff);//in KW
cosfi_1=0.75;//powerfactor
tanfi_1=tand(acosd(cosfi_1));//unitless
Pr1=MotorIn*tanfi_1;//in KVAR
//(ii)
P2=300;//in KW
cosfi_2=0.5;//unitless
tanfi_2=tand(acosd(cosfi_2));//unitless
Pr2=P2*tanfi_2;//in KVAR
//(iii)
P3=200;//in KW
cosfi_3=1;//unitless
tanfi_3=0;//unitless
Pr3=0;//in KVAR
//(iv)
PsynMotor=500;//in KW
Eff=93;//in %
Eff=93/100;//in fration
Input=PsynMotor/Eff;//in KW
Pa=MotorIn+P2+P3+PsynMotor;//in KW
P1=Pr1+Pr2+Pr3;//in KVAR
cosfi=1;//unitless
tanfi=0;//unitless
Pr=Pa*tanfi;//in KVAR
Prm=Pr-P1;//in KVAR
tanfi_m=Prm/Input
cosfi_m=cosd(atand(tanfi_m));//unitless
disp(cosfi_m,"P.F. of the motor(lead) :");
//Note : Answer in the book is wrong
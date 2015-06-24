//Exa 10.9
clc;
clear;
close;
//Given Data :
format('v',7);
Pa=500;//in KW
cosfi_1=0.7071;//powerfactor
tanfi_1=tand(acosd(cosfi_1));//unitless
Pr1=Pa*tanfi_1;//in KVAR
Pm=100;//in KW
P=Pa+Pm;//in KW
cosfi_2=0.95;//unitless
tanfi_2=tand(acosd(cosfi_2));//unitless
Pr=P*tanfi_2;//in KVAR
Prm=Pr-Pr1;//in KVAR
Pam=sqrt(Pm^2+Prm^2)
PFsynMotor=Pm/Pam;//leading PF
disp(PFsynMotor,"P.F. of synchronous motor(leading) :");
//Exa 10.14
clc;
clear;
close;
//Given Data :
format('v',9);
f=50;//in Hz
V=240;//in Volts
//(i)
Imoter=20;//in Ampere
cosfi_1=0.75;//unitless
ReacComponent1=Imoter*sqrt(1-cosfi_1^2);//in Ampere
//(ii)
cosfi_2=0.9;//unitless
P2=200*735.5/(1000*0.8);//in KW
ReacComponent2=Imoter*sqrt(1-cosfi_2^2);//in Ampere
Ic=ReacComponent1-ReacComponent2;//in Ampere(Leading reactive component)
C=Ic/(2*%pi*f*V);//in Farads
disp(round(C*10^6),"Capacitance of the capacitor(in uF) :");
//Power of the motor=5 KW
P=5;//in KW
tanfi_1=tand(acosd(cosfi_1));
tanfi_2=tand(acosd(cosfi_2));
LeadingKVAR=P*(tanfi_1-tanfi_2);//in KVAR
disp(round(LeadingKVAR),"Leading KVAR supplied by the capactor(in KVAR) :");
disp(LeadingKVAR/3,"KVAR supplied per phase : ");
//Note : Answer in the book is wrong
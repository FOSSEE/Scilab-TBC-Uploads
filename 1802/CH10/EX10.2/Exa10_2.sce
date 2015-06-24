//Exa 10.2
clc;
clear;
close;
//Given Data :
format('v',7);
Eta=85;//in %
P=30;//in HP
P1=P*0.7355*Eta/100;//in KW
cosfi_1=0.8;//powerfactor
tanfi_1=tand(acosd(cosfi_1));//unitless
Pr=P1*tanfi_1;//in KVAR
//Let active power P2 : Total Active power = P1+P2
cosfi=0.9;//overall powerfactor
tanfi=tand(acosd(cosfi));//unitless
//Pr1=tanfi*(P1+P2);//in KVAR
//Putting Pr=Pr1
P2=(Pr-P1*tanfi)/tanfi;//in KW
disp(P2,"Rating of the heater(in KW) :");
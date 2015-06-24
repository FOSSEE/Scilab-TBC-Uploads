//Exa 10.12
clc;
clear;
close;
//Given Data :
format('v',9);
//(i)
PHeater=50;//in KW
cosfi_1=1;//unitless
tanfi_1=tand(acosd(cosfi_1));//unitless
Pr1=PHeater*tanfi_1;//in KVAR
//(ii)
cosfi_2=0.7;//unitless
P2=200*735.5/(1000*0.8);//in KW
tanfi_2=tand(acosd(cosfi_2));//unitless
Pr2=P2*tanfi_2;//in KVAR
//(iii)
cosfi=0.9;//unitless New PF
P3=200*735.5/(1000*cosfi);//in KW
TotalActivePower=PHeater+P2+P3;//in KW
TotalReactivePower=Pr1+Pr2;//in KW
tanfi=tand(acosd(cosfi));//unitless
TotalPr=TotalActivePower*tanfi;//in KVAR
Pnn=TotalPr-TotalReactivePower;//in KVAR(ReactivePower of motor)
tanfi_mu=Pnn/P3;//unitless
cosfi_mu=cosd(atand(tanfi_mu));
disp(cosfi_mu,"PF of the synchronous motor :");
//Note : Answer in the book is wrong
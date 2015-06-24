//Exa 5.13
clc;
clear;
close;
//Given data :
hfe=50;//unitless
hie=1.1;//in kOhm
hoe=0;//unitless
hre=0;//unitless
RL=4;//in kOhm
Rs=10;//in kOhm
RB=40;//in kOhm
RLdash=RB*RL/(RB+RL);//in Kohm
AV=-hfe*RLdash/hie;//unitless
//Part (i) ;
Rif=hie*(RB/(1-AV))/(hie+(RB/(1-AV)));//in kOhm
disp(round(Rif*1000),"Input resistance with feedback in Ohm : ");
//Part (ii) :
AVf=AV*(Rif/(Rs+Rif));//unitless
disp(AVf,"Voltage gin with feedback : ");
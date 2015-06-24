//Example No. 4.12
clc;
clear;
close;
format('v',8);

//Given Data : 
T=60;//min
t=20;//min
ShortTimeRating=300;//W
Eff=80/100;//Efficiency
//Let full load rating is P KW and Losses=Pc
//CuLoss=(P/(P*Eff))^2 & alfa=Pc/CuLoss
alfa=(Eff)^2;//unitless
S=sqrt(((1+alfa)/(1-exp(-t/T))-alfa));
ContinuousRating_fl=ShortTimeRating/S;//KW
disp(ContinuousRating_fl,"Continuous rating of motor in W : ");

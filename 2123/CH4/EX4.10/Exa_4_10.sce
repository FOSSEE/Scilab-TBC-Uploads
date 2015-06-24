//Example No. 4.10
clc;
clear;
close;
format('v',5);

//Given Data : 
T=90;//min
t=25;//min
ShortTimeRating=50;//KW
Eff=80/100;//Efficiency
//Let full load rating is P KW and Losses=Pc
//CuLoss=(P/(P*Eff))^2 & alfa=Pc/CuLoss
alfa=(Eff)^2;//unitless
S=sqrt(((1+alfa)/(1-exp(-t/T))-alfa));
ContinuousRating_fl=ShortTimeRating/S;//KW
disp(ContinuousRating_fl,"Continuous rating of motor in KW : ");

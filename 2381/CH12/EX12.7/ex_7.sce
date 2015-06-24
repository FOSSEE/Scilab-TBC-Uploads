//Example 7//frequency
clc;
clear;
close;
v=330;//m/s
n=600;//Hz
vs=20;//m/s
apf=((v)/(v+vs))*n;//Hz
disp(round(apf),"frequency when source is moving away from the observer is ,(Hz)=")
apf1=((v)/(v-vs))*n;//Hz
disp(round(apf1),"frequency when siren reaching at the cliff is ,(Hz)=")
bf=apf1-apf;//Hz
disp(round(bf),"beat frequency is ,(Hz)=")

//Example No. 4.9
clc;
clear;
close;
format('v',7);

//Given Data : 
T=80;//min
Tdash=110;//min
Rating=50;//KW
ts=15;//min
S=sqrt(1/(1-exp(-ts/T)));
ShortTimeRating=S*Rating;//KW
disp(ShortTimeRating,"Short time rating of motor in KW : ");
t_off=20;//min
S=sqrt((1-exp(-(ts/T+t_off/Tdash)))/(1-exp(-(ts/T))))
DutyRating=S*Rating;//KW
disp(DutyRating,"Intermittent periodic duty rating in KW : ");

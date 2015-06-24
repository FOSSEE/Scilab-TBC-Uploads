//Example No. 4.8
clc;
clear;
close;
format('v',6);

//Given Data : 
Rating=100;//KW
alfa=0.9;//unitless
ts=20;//min
T=100;//min
S=sqrt((1+alfa)/(1-exp(-ts/T)));
ShortTimeRating=S*Rating;//KW
disp(ShortTimeRating,"Short time rating in KW : ");
//Answer is wrong in the textbook.

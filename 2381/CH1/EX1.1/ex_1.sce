//Example 1 //  FREQUENCY AND TIME PERIOD
clc;
clear;
close;
format('v',6)
//ph=50*x^2+100 in joule/kg
m=10;//mass in kg
f=10^3/m;//joule/kg
w=sqrt(f);//oscillations
fr=w/(2*%pi);//oscillations/sec
tp=1/fr;//seconds
disp(fr,"frequency of oscillation is ,(oscillations/seconds)=")
disp(tp,"time period is,(seconds)=")

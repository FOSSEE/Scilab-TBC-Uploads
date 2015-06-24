//Example 7.15: specific energy consumption
clc;
clear;
close;
format('v',9)
//given data :
w=1;//in tonnes
we=(1+(10/100))*w;//efective weight in tonnes
S=1525;//in meters
r=52.6/1000;//in N/kg
alpha=0.366;//m/s^2
V1=12.2;// in m/s
t1=V1/alpha;//in seconds
ft=we*alpha+r;//in newtons
ter=((1/2)*ft*V1*t1)/3600;//in watt-hours
seo=ter/(w*S);// in Wh/kg-m
n=0.65;//efficiency
sec1=seo/n//in Wh/kg-m
disp(sec1,"specific energy onsumption in Wh/kg-m")


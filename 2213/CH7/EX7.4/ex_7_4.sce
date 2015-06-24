//Example 7.4 //sheduled speed
clc;
clear;
close;
format('v',4)
s=1.5;//in Km
a=0.8;//aceleration in kmphps
tsr=26;//time for stop in seconds
rm=1.3;//ratio
b=3.2;//retardation in kmphps
k=((1/(2*a))+(1/(2*b)));//constant
T=1;//assume
va1=(3600*s)/T;//average spped
vm1=(va1*rm);//maximum speed
vm=sqrt((vm1-va1)/k);//maximum speed in kmph
va=vm/1.3;//actua speed in kmpj
ta=(3600*s)/va;//actual time in seconds
ts=ta+tsr;//shedule time
vs=(s*3600)/ts;//shedule speed in kmph
disp(vs,"schedule speed in kmph")

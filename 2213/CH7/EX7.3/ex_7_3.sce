//Example 7.3 //maximum speed
clc;
clear;
close;
format('v',4)
a=2.4;//aceleration in kmphps
b=3.2;//retardation in kmphps
s=1.5;//in km
vs=45;//shedule speed in kmph
ts=(s*3600)/vs;//shedule time in seconds
tst=20;//stop time
tr=ts-tst;//actual time for run in seconds
k=((1/(2*a))+(1/(2*b)));//constant
vm=((tr/(2*k))-sqrt(((tr^2)/(4*k^2))-((3600*s)/k)));//in kmph
disp(vm,"maximum speed in kmph")

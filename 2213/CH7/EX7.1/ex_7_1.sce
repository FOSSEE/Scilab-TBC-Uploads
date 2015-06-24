//Example 7.1.//distance,average speed and scheduled speed
clc;
clear;
close;
format('v',6)
a=5;//aceleration in kmphps
t1=30;//in seconds
vm=a*t1;//maximum speed in kmph
tfr=10;//time for free running in mins
b=5;//retardation in kmphps
ts=vm/b;//time for retardation in seconds
dta=((vm*t1)/(2*3600));//distance travelled during acceleration period
dtfr=((vm*tfr*60)/(3600));//distance travelled during retardation period
dtbp=dta;//distance travelled during breaking period
td=dta+dtfr+dtbp;//total distance between stations
disp("part (a) ")
disp(td,"total distance between station in km")
T=[0;t1;(t1+(tfr*60));(t1+(t1+(tfr*60)))];//
V=[0;vm;vm;0];//
plot2d(T,V)
xlabel("Time in seconds ")
ylabel("Spped in Km per Hour")
va=(td*3600)/(t1+(tfr*60)+ts);//average speed in kmph
disp("part (b) ")
disp(va,"average speed in kmph")
tst=5;//stop time in mins
vs=(td*3600)/(t1+(tfr*60)+ts+(tst*60));//sheduled speed in kmph
disp("part (c) ")
disp(vs,"sheduled speed in kmph")

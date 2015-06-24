//to calculate precision index of instrument

clc;
t=.675;
x=2.4;
sd=x/t;
h=1/(sqrt(2)*sd);
disp(h,'precision index');
t=(50-44)/sd;
p=.45;
n=8*30;    //sept month no of measurements
a=((.5-p)*n);
disp(a,'no of false alarms');

rn=a/2;    //reduced no of false alarms
p1=rn/n;
P=.5-p1;
t=1.96;
sd=(50-44)/t;
h=1/(sqrt(2)*sd);
disp(h,'precision index');

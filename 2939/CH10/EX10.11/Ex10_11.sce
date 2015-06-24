//Ex10_11
clc;
// Given:
t1=12.7;// in hours
a=4.5*10^-24;// in cm^2
r=69.1;//in %
cf=10;// in %
flux=10^6;
Na=6.022*10^23;
cpm=1500;// activity in counts per min
M=63;
//Solution:
dpm=cpm*100/10;
dps=dpm/60;
x=exp(-0.693*5/t1);
A=dps/x;

s=1-(exp(-.693*10/(12.7)));
w=(A*M*100)/(Na*r*a*flux*s);// gms of Cu

// given that 5g Cu in 100g alloy, for wg amount of alloy will be

Y=100*w/5;// amount of alloy ing

printf("\n The weight of the sample that should be taken is = %f g",Y)

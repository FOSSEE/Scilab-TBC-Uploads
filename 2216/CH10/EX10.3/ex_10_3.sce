//Example 10.3;output signal power and overall gain
clc;
clear;
close;
format('v',6)
disp("part (a)")
psin=1*10^-6;//in watts
ppin=1;//in watts
gr=5*10^-14;//mW^-1
ap1=60*10^-12;//m^2
l=2000;//meter
asdb=0.15;//dB/km
as=3.39*10^-5;//m^-1
apdb=0.20;//db/km
ap=4.50*10^-5;//m^-1
z=(1-exp(-ap*l))/ap;//
y=(gr/ap1);//
y1=z*y;//
y2=y1-(as*l);//
psl=psin*exp(y2);//
disp(psl*10^6,"output signal power for forward pumping in micro Watt is")
format('v',5)
disp("part (b)")
y1=z*y;//
y2=y1-(as*l);//
psl=psin*exp(y2);//
gfra=psl/(psin);//
Gdb=10*log10(gfra);//
disp(Gdb,"overall gain in dB is")

//Caption:Determine average voltage level
//Ex1.3
clc;
clear;
close;
vs=2//Vertical scale(V/div)
hs=1//Horizontal scale(ms/div)
v1=8//Amplitude of signal in (+)ve direction (in volts)
v2=-1//Amplitude of signal in (-)ve direction (in volts)
t1=0.8//Horizontal divisions for v1
t2=2.2//Horizontal divisions for v2
T=3*hs
T1=t1*hs
T2=t2*hs
Va=((T1*v1)+(T2*v2))/T
disp(Va,'Average voltage (in volts)=')
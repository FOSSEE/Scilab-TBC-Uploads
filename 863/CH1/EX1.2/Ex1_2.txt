//Caption:Determine (a)Pulse amplitude,tilt,rise time,fall time,PW,PRF,mark to space ratio,and duty cycle (b)tilt
//Ex1.2
clc;
clear;
close;
vs=100//Vertical scale(in mv/divisions)
hs=100//Horizontal scale(in micro sec/division)
e1=380//first peak of waveform(in mv)
e2=350//second peak of waveform(in mv)
E=(e1+e2)/2
t=(e1-e2)*100/E
tr=0.3*hs
tf=0.4*hs
T=5*hs
prf=10^6/T
pw=2.2*hs
sw=2.8*hs
ms=pw/sw
dc=(pw*100)/T
disp(dc,ms,pw,prf,tf,tr,t,E,'(a)Pulse Amplitude(in mv),tilt(in %),rise time(in micro sec),fall time(in micro sec),PW(in micro sec),PRF(in pps),M/s ratio,Duty cycle(in %)=')
eb=0.5*vs
ee=2.25*vs
tb=eb*100/ee
disp(tb,'(b)Tilt(in %)=')
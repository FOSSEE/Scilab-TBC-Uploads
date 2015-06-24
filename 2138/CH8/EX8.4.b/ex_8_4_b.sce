//Example 8.4.b // horse power
clc;
clear;
close;
Il=83;// WHEN LOADED IN AMPERES
V=110;// in volts
I=5;// in amperes without load
ra=0.5;//armature resistance in ohms
rsh=110;//shunt field in ohms
Ish=V/rsh;// in ampere
 anl=I-Ish;//armature current in amperes at no load
 al=Il-Ish;//armature currentin amperes at load
 Eb1=(V-anl*ra);//back emf at no load
 Eb2=(V-al*ra);//back emf at load
 Dp=Eb1*anl;//driving power at no load in watt
 Dpl=Eb2*al;//driving power at load in watt
 mo=Dpl-Dp;//out of motor in watt
 bhp=mo/746;//horse power
disp(bhp,"horse power in ampere is")

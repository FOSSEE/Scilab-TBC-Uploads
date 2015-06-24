//Example 8.3 // speed
clc;
clear;
close;
V=230;// in volts
 I=5;// in amperes
 rpm=914;//turns
 ra=0.5;//resistance of armature in ihms
 rsh=115;//shunt field in ohms
 Il=30;// in amperes
 ar=10;// in percent
 Ish=V/rsh;// in amperes
 anl=I-Ish;//armature current in amperes at no load
 al=Il-Ish;//armature currentin amperes at load
 Eb1=(V-anl*ra);//back emf at no load
 Eb2=(V-al*ra);//back emf at load
 ph1=100;//
 ph2=90;//
 Ns=(rpm*Eb2*ph1)/(Eb1*ph2);//speed when loaded in rpm
 disp(Ns,"speed when loaded in rpm")

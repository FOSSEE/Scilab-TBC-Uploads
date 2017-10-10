//Caption:Determine (a)Minimum upper cut frequency (b)Minimum pulse width and duty cycle
//Ex1.5
clc;
clear;
close;
prf=1.5//in Khz
dc=3//Duty cycle(in %)
pa=1.5//Amplitude of pulse(in Khz)
fu=1//High frequency limit(in Mhz)
tr=10//Rise time(in %)
pw=(dc/100)*10^3/pa
Tr=(tr/100)*pw
fh=0.35*10^6/Tr
disp(fh,'(a)Minimum upper cut frequency(in hertz)=')
Tr2=0.35*10^(-6)/fu
Pw=10*Tr2
dc=Pw*100*(pa*1000)
disp(dc,Pw,'(b)Pulse width(in sec) and Duty cycle(in %)=')
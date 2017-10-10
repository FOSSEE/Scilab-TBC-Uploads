//Caption:Calculate Vce (a)Before input pulse is applied (b)at end of delay time (c)at end of turn on time (d)Total time 
//Ex4.3
clc;
clear;
close;
Vcc=12//Collector voltage(in volts)
Rc=3.3//Collector resistor(in Kilo ohm)
pw=5//Pulse width of input voltage(in micro sec)
Ix=50//Collector cutoff current(in nA)
t=250//Switch off time(nA)
Vce=Vcc-(Ix*Rc*10^(-6))
disp(Vce,'(a)Collector emitter voltage before input pulse is applied(in volts)=')
Vce2=Vcc-(0.1*Vcc)
disp(Vce2,'(b)Collector emittter voltage at end of delay time(in volts)=')
Vce3=Vcc-(0.9*Vcc)
disp(Vce3,'(c)Collector emitter voltage at end of turn on time(in volts)=')
T=(t*10^(-3))+pw
disp(T,'(d)Total time from commencement of input to transistor switch off(in micro sec)=')
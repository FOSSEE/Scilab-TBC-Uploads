//Ex 7.1
clc;clear;close;
format('v',5);
P=4;//no. of poles
f=50;//Hz
S=4/100;//slip
N=600;//rpm
p=P/2;//pair of poles
//(a)
Ns=60*f/p;//rpm(Synchronous speed)
disp(Ns,"(a) Synchronous speed(rpm)");
//(b)
Nr=Ns-S*Ns;//rpm(Rotor speed)
disp(Nr,"(b) Rotor speed(rpm)");
//(c)
Sdash=(Ns-N)/Ns;//per unot slip
fr=f*Sdash;//Hz(Rotor frequency)
disp(fr,"Rotor frequency(Hz)");

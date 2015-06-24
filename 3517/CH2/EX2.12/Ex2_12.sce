//Caption:Calculate amplitude of output waveform for (a)Rise time (b)Fall time
//Ex2.12
clc;
clear;
close;
r=1//Resistance(in kilo ohm)
c=100//Capacitance(in pf)
tr=1//Rise time(in micro sec)
tf=3//Fall time(in micro sec)
e1=8//Change in voltage for rise time(in volts)
e2=-8//Change in voltage for fall time(in volts)
eo1=r*c*0.001*e1/tr
disp(eo1,'Amplitude of output waveform for (a)Rise time(in volts)=')
eo2=r*c*0.001*e2/tf
disp(eo2,'Amplitude of output waveform for (b)Fall time(in volts)=')
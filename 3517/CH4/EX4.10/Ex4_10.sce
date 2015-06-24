//Caption:Determine output voltage when (a)Device is cutoff (b)Device is switched on
//Ex4.10
clc;
clear;
close;
Idf=0.25//Drain current at cutoff(in ns)
rd=40//Drain resistance at switched on(in ohm)
Vdd=15//Drain voltage(in volts)
Rd=6.8//Drain resistance(in kilo ohm)
Vo=Vdd-(Idf*Rd*10^(-6))
disp(Vo,'Output voltage when device is cutoff(in volts)=')
Id=Vdd/Rd
Vo2=Id*rd
disp(Vo2,'Output voltage when device is switched on(in milli volts)=')
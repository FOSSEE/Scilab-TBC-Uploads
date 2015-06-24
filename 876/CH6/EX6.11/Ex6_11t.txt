//caption:Find(a)output voltage after 1 sec(b)fall time of reference voltage waveform
//Ex6.11
clc
clear
close
R=100000//resistance of DVM(in ohm)
C=10^-6//capacitance(in F)
Vin=1//input voltage(in V)
t1=1//rise time of reference voltage waveform at output of integrator(in second)
Vref=5//reference voltage(in V)
Vo=Vin*(t1/(R*C))
disp(Vo,'(a)output voltage after 1sec(in V)=')
t2=(Vin/Vref)*t1
disp(t2,'(b)fall time reference voltage waveform(in second)=')
//caption:Find input voltage
//Ex6.10
clc
clear
close
Vref=5//reference voltage(in V)
t1=0.2//coumts when input voltage is applied(in sec)
R=100*10^3//resistance(in ohm)
C=10^-6//capacitance(in F)
t2=R*C
Vin=(t2/t1)*Vref
disp(Vin,'input voltage(in V)=')
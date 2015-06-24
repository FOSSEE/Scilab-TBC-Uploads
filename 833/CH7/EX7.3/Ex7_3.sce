//Caption:Find effect of change in connection on voltage,current and output
//Exa:7.3
clc;
clear;
close;
P=50000//Power of generator(in watt)
V_b1=230//Voltage of generator(in volts)
p=4//Number of poles
a=4//Number of parallel paths for lap winding
b=2//Number of parallel paths for wave winding
C=268//Number of conductors with LAP winding
t=2//Two turns coils are used
c=t*2//Conductors per slot
n=C/c
I_1=P/(V_b1)
V_b2=V_b1*b
I_2=P/(V_b2)
disp(V_b1,I_1,'Current(in A) and voltage(in volts) for LAP winding=')
disp(V_b2,I_2,'Current(in A) and voltage(in volts) for WAVE winding=')
disp(P,'Output is same for both connections(in watts)=')
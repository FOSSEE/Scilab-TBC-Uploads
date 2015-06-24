//Caption: Calculate Phase and Line currents in (a)High voltage (b)Low voltage windings of transformer
//Exa:3.2
clc;
clear;
close;
P=50000//Power of induction motor(in watts)
V=440//Voltage of induction motor(in volts)
eff=90//Efficiency(in%)
pf=0.85//power factor
V_1=11000//Primary side voltage of transformer(in volts)
V_2=440//Secondary side voltage of transformer(in volts)
I_fl=P/((3^0.5)*V*pf*(eff/100))
v=V/(3^0.5)
n=V_1/v
I_ph=I_fl/(n)
I_l=(3^0.5)*I_ph
disp(I_ph,I_l,'(a)High Voltage side line and phase currents(inA)=')
disp(I_fl,I_fl,'(b)Low voltage side phase and line currents(inA)=')  
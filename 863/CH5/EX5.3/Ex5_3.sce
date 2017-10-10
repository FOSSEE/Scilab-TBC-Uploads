//Caption:Design an inverter by determining input resistance,current and capacitance 
//Ex5.3
clc;
clear;
close;
Vo=11//Output voltage(in volts)
Vcc=12//Collector voltage(in volts)
Vi=6//Input voltage(in volts)
f=1//Frequency(in Khz)
Vb=0.5//Base voltage(in volts)
Vee=-12//Emitter voltage(in volts)
Ib=500//Max base current(in nA)
Vc=2//Collector voltage(in volts)
Vr2=Vb-Vee
I2=100*Ib*0.001
R2=Vr2/I2
i=Vr2/R2
R1=(Vcc-Vb)/i
Ri=(R1*R2)*1000/(R1+R2)
Ii=Vi*1000/Ri
pw=1000/(2*f)
C=(Ii*pw)*10^(-6)/Vc
disp(C,Ii,Ri,'Input resistance(in kilo ohm),Input current(in micro ampere) and Capacitance(in micro farad)=')
//Caption:Determine the error due to capacitance
//Ex15.3
clc;
clear;
close;
Vgs=10//Gate source voltage(in volts)
C=10.5//Capacitance(in pF)
Vs=1//Supply voltage(in volts)
C1=0.25//Capacitance(in micro farad)
V1=-(Vs+Vgs+1)
Vgsm=Vs-(V1)
Q=C*Vgsm
Vo=Q/C1
e=Vo*10^(-6)*100/Vs
disp(e,'Error due to capacitance(in %)=')
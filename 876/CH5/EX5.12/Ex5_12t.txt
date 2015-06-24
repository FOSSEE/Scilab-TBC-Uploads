//caption:Find R1 and Rsh
//Ex5.12
clc
clear
close
Ifsd=0.001//current value(in A)
Rm=100//resistance(in ohm)
E=3//voltage(in V)
Rh=1//deflection resistance(in ohm)
Im=Ifsd/2
Ish=Im*((Rm-Rh)/Rh)
Rsh=(Im*Ish)/(Ish)
disp(Rsh,'value of Rsh(in ohm)=')
It=2*Im*(Rm/Rh)
R1=(E-Im*Rm)/It
disp(R1,'value of R1(in ohm)=')
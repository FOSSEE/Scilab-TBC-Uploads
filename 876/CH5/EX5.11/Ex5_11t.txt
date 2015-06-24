//caption:Find (a)value of R1 and R2(b)change in value of R2(c)half scale deflection
//Ex5.11
clc
clear
close
Ifsd=0.001//current(in A)
Rm=100//internal resistance(in ohm)
E=9//battery voltage(in V)
Rh=5000//half scale deflection(in ohm)
R1=Rh-((Ifsd*Rm*Rh)/E)
disp(R1,'(a)value of R1(in ohm)=')
R2=(Ifsd*Rm*Rh)/(E-Ifsd*Rh)
disp(R2,'(a)value of R2(in ohm)=')
Eo=E-0.9
Ro=(Ifsd*Rm*Rh)/(Eo-Ifsd*Rh)
disp(Ro,'(b)change in value of R2(in ohm)=')
Rh2=R1+((Ro*Rm)/(Ro+Rm))
disp(Rh2,'(c)half scale deflection(in ohm)=')
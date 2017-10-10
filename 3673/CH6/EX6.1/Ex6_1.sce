//Example 6_1 page no:229
clc
phase_angle=30//phase angle in degree
Vm=100//maximum voltage
Veff=100/sqrt(2)
Ieff=15/sqrt(2)
Pav=Veff*Ieff*cosd(phase_angle)
disp(Pav,"Average Power is(in watts)")

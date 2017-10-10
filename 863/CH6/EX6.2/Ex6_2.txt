//Caption:Find circuit components for designing a schmitt trigger circuit
//Ex6.2
clc;
clear;
close;
u=5//Upper trigger point voltage(in volts)
Vbe=0.7//Base emitter voltage(in volts)
I=2//Collector current(in mA)
hfe=100
Vcc=12//Collector voltage(in volt)
Vce=0.2//Saturated collector emitter voltage(in volts)
l=3//Lower trigger point voltage(in volts)
Ve=u-Vbe
Re=Ve/I
Rc=(Vcc-Ve-Vce)/I
i=I/10
R2=u/i
Ib2=I/hfe
I2=u/i
It=Ib2+i
r=(Vcc-u)/It
I1=l/R2
Ie=(l-Vbe)/Re
Rc1=Vcc-(I1*(r+R2))/Ie
R1=r-Rc1
disp(R1,R2,Rc1,Re,'Circuit components are Re,Rc1,R2,R1(in kilo ohm)=')
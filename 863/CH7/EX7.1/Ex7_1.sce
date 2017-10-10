//Caption:Design a collector coupled monostable multivibrator by determining rc,rb,r2,r1 and vb1
//Ex7.1
clc;
clear;
close;
vs=9//Supply voltage(in volts)
Ic=2//Collector current(in mA)
hfe=50
vd=0.7//Diode forward voltage(in volts)
vce=0.2//Saturated collector emitter voltage(in volts)
Vbb=-9//Base voltage(in volts)
Vbe=0.7//Base emitter voltage(in volts)
Rc=(vs-vd-vce)/Ic
Ib2=Ic*1000/hfe
Rb=(vs-Vbe-vd)*1000/Ib2
I2=Ic*1000/10
Vr2=Vbe-Vbb
R2=Vr2*1000/I2
i=Ib2+I2
r=(vs-Vbe)*1000/i
R1=r-Rc
Vc2=vd+vce
Vr1=R1*(vs-Vbb)/(R1+R2)
Vb1=Vc2-Vr1
disp(Vb1,R1,R2,Rb,Rc,'Required components for circuit design are Rc,Rb,R2,R1(in kilo ohm) and Vb1(in volts)=')
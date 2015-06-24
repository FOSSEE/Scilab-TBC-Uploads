//Caption:Design a collector coupled bistable multivibrator
//Ex13.1
clc;
clear;
close;
V=5//Supply voltage(in volts)
Ic=2//Saturated collector current(in mA)
Vce=0.2//Collector emitter voltage(in volts)
hfe=70
Vbe=0.7//Base emitter voltage(in volts)
Vbb=-5//Base voltage(in volts)
Rc=(V-Vce)/Ic
Ib=Ic/hfe
Vb1=Vbe-Vbb
I2=Ic/10
R2=Vb1/I2
I2=Vb1/R2
R=(V-Vbe)/(I2+Ib)
R1=R-Rc
disp(Rc,R1,R2,'Components required to design the circuit are resistors(in kilo ohm)=')
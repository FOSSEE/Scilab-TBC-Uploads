//Caption:Design a interface circuit for CMOS
//Ex12.4
clc; 
clear;
close;
Vdd=15//Drain voltage(in volts)
Rd=1//Drain resistance(in kilo ohm)
Vcc=5//Supply voltage(in volts)
Ih=40//Current(in micro ampere)
hfe=20
Vce=0.2//Saturated collector emitter voltage(in volts)
vih=2//High input voltage(in volts)
il=1.6//Low input current
Vbe=0.7//Base emitter voltage(in volts)
Rc=(Vcc-vih)*1000/(2*Ih)
Ic=((Vcc-Vce)/Rc)+(2*il)
Ib=Ic/hfe
R=(Vdd-Vbe)/Ib
Rb=R-Rd
disp(Rc,Rb,'Components required to design circuit are resistors Rb and Rc(in kilo ohm)=')
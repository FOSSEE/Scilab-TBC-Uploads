//Caption:Determine (a)hfe (b)hfe for changed resistor
//Ex4.1
clc;
clear;
close;
Ib=0.2//Base current(in mA)
Vcc=10//Collector voltage(in volts)
Rc1=1//Collector resistor(in kilo ohm)
Rc2=220//Changed collector resistor(in ohm)
Ic1=Vcc/Rc1
h1=Ic1/Ib
disp(h1,'(a)hfe=')
Ic2=Vcc*1000/Rc2
h2=Ic2/Ib
disp(h2,'(b)hfe for changed resistor=')
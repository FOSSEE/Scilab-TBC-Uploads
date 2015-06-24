//caption:Calculate the output voltage
//Ex15.4
clc;
clear;
close;
Vie=1//Input voltage for resistor Re(in volts)
Vid=0//Input voltage for resistor Rd(in volts)
Vic=1//Input voltage for resistor Rc(in volts)
Vib=1//Input voltag for resistor Rb(in volts)
Via=0//Input voltage for resistor Ra(in volts)
R=16//Input Resistor(in kilo ohm)
re=1//Resistor(in kilo ohm)
rd=2//Resistor(in kilo ohm)
rc=4//Resistor(in kilo ohm)
rb=8//Resistor(in kilo ohm)
ra=16//Resistor(in kilo ohm)
Vo=R*((Vie/re)+(Vid/rd)+(Vic/rc)+(Vib/rb)+(Via/ra))
disp(Vo,'Output voltage(in volts)=')
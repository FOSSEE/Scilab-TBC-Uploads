//Caption: Determine fan out for DTL NAND gate 
//Ex12.1
clc;
clear;
close;
hfe=20
Vbe=0.7//Base emitter voltage(in volts)
R3=6//Resistance(in kilo ohm)
R2=5//Resistance(in kilo ohm)
Vcc=5//Supply voltage(in volts)
R1=2//Resistance(in kilo ohm)
Vce=0.2//Collector emitter voltage(in volts)
Vf4=0.7//Diode forward voltage
Vf5=Vf4
Vf6=Vf4
I2=Vbe/R2
Va=Vf4+Vf5+Vbe
I1=(Vcc-Va)/R1
Ib=I1-I2
Ic1=hfe*Ib
I3=(Vcc-Vce)/R3
Iol=Ic1-I3
R4=R1
Iil=(Vcc-Vf6)/R4
fo=Iol/Iil
disp(fo,'Fan out=')
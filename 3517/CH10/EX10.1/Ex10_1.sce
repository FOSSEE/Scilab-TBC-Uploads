//Caption:Determine low and high voltage outputs and resistance for desinging the gate circuit
//Ex10.1
clc;
clear;
close;
Vcc=5//Supply voltage(in volts)
Vf=0.7//Diode forward voltage(in volts)
I=0.5//Collector current(in mA)
Vce=0.2//Collector emitter voltage(in volts)
R=(Vcc-Vf-Vce)/I
Vl=Vce+Vf
Vh=Vcc
disp(R,Vh,Vl,'Low and high voltage outputs(in volts) and Required resistance(in kilo ohm)=')
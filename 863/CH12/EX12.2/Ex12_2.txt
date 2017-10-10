//Caption:Determine Resistance to drive inputs of 5 TTL gates
//Ex12.2
clc;
clear;
close;
Ii=1.6//Maximum input current(in mA)
Io=16//Maximum output current(in mA)
Vcc=5//Supply voltage(in volts)
Vo=0.4//Maximum output voltage(in volts)
Il=5*Ii
Irc=Io-Il
Vrc=(Vcc-Vo)
Rc=Vrc*1000/Irc
disp(Rc,'Required resistance(in ohm)=')
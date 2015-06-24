// Example 4.4: drain current and transconductance
clc, clear
Idss=20; // maximum drain current in mili-ampere
Vp=-8; // pintc off voltage in volts
gmo=5000; // in micro seconds
Vgs=-4; // gate to source voltage in volts
Id=Idss*(1-(Vgs/Vp))^2;
gm=gmo*(1-(Vgs/Vp));
disp(Id,"drain current (mA) = ")
disp(gm,"transconductance (micro-second) = ")

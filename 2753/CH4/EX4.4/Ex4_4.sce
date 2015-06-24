//Example 4.4: 
clc;
clear;
close;
//given data :
Vcc=15;// in V
Rb=200;// in k-ohm
Rc=2;// in k-ohm
Beta=50;
Ib=(Vcc/(Rb*10^3+(Beta*Rc*10^3)))*10^6;//in micro-A
Ic=Beta*Ib*10^-3;//in mA
Vce=Vcc-(Ic*10^-3*(Rc*10^3));
format('v',4)
disp(Ic,"collector current,Ic(mA) = ")
disp(Vce,"Collector to emitter voltage,Vce(V) = ")

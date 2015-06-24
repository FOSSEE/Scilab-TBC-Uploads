//Example 4.7: 
clc;
clear;
close;
//given data :
Vcc=9;// in V
Rb=50;// in k-ohm
Rc=250;// in ohm
Re=500;// in ohm
Beta=80;
Ib=Vcc/(Rb*10^3+(Beta*Re));
Ic=Beta*Ib*10^3;
Vce=Vcc-(Ic*10^-3*(Rc+Re));
format('v',3)
disp(Ic,"collector current,Ic(mA) = ")
disp(Vce,"Collector to emitter voltage,Vce(V) = ")

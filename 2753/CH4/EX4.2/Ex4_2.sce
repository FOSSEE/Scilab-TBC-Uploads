//Example 4.2: 
clc;
clear;
close;
//given data :
Beta=100;
Rb=200*10^3;// in ohm
Rc=1*10^3;// in ohm
Vcc=10;// in V
Ib=Vcc/Rb;// in A
Ic=Beta*Ib;//in A
Vce=Vcc-(Ic*Rc);
format('v',4)
disp(Vce,"Collector to emitter voltage,Vce(V) =  ")

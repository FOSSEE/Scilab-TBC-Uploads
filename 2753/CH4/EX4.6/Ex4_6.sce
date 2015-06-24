//Example 4.6: 
clc;
clear;
close;
//given data :
Vcc=12;// in V
Rb1=70;// in k-ohm
Rb2=70;// in k-ohm
Beta=50;
Rc=2;// in k-ohm
Ib=Vcc/((Rb1+Rb2+(Beta*Rc))*10^3);
Ic=Beta*Ib*10^3;
Vce=Vcc-(Ic*Rc);
format('v',4)
disp(Ic,"collector current,Ic(mA) = ")
disp(Vce,"Collector to emitter voltage,Vce(V) = ")

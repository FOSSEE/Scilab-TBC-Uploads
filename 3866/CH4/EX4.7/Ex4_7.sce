clc; clear; close;


Wn=0.4;//in micrometer
Wp=0.8;//in micrometer
Vdd=1.8;//in volts
Vtn=0.5;//in volts
Ecp=24;
Ecn=6;
Vtp=0.5;//in volts
Voh=Vdd;
Vol=0;
Vil=0.7;//in volts
Vih=1;//in volts
X=sqrt((Wn*Ecp)/(Wp*Ecn));
Vs=(Vdd+(X*Vtn)-Vtp)/(1+X);
NMH=Voh-Vih;
NML=Vil-Vol;
disp(Vs,'Vs(in volts)=');
disp(NMH,'NMH(in volts)=');
disp(NML,'NMH(in volts)=');

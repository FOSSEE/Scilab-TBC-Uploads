clc; clear; close;

Wn1=400;//in nm
Wp1=400;//in nm
Wn2=200;//in nm
Wp2=800;//in nm
Vdd=1.8;//in volts
Vtp=0.5;//in volts
Vtn=0.5;//in volts
Ep=24;//in volts
En=6;//in volts
X1=sqrt((Wn1*Ep)/(Wp1*En));
Vs1=(Vdd+(X1*Vtn)-Vtp)/(1+X1);
X2=sqrt((Wn2*Ep)/(Wp2*En));
Vs2=(Vdd+(X2*Vtn)-Vtp)/(1+X2);
disp(Vs1,'Vs when one input is high and other is varied(in volts)=');
disp(Vs2,'Vs when both inputs are varied(in volts)=');

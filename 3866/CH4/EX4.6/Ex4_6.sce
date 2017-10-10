clc; clear; close;

Wn=0.1;//in micrometer
Wp1=0.4;//in micrometer
Wp2=0.1;//in micrometer
Vdd=0.8;//in volts
Vtn=0.4;//in volts
Ecp=24;
Ecn=6;
X1=sqrt((Wn*Ecp)/(Wp1*Ecn));
Vs1=(Vdd+(X1*Vtn))/(1+X1);
X2=sqrt((Wn*Ecp)/(Wp2*Ecn));
Vs2=(Vdd+(X2*Vtn))/(1+X2);
disp(Vs1,'switchng voltage(in volts) for Wp=0.4um ');
disp(Vs2,'switchng voltage(in volts) for Wp=0.1um ');

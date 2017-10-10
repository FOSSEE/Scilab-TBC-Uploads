clc; clear; close;

Vol=0.1;//in volts
WL=9;
uc=430;//in uA/v^2
en=0.6;//in volts
Vdd=1.2;//in volts
Vtn=0.4;//in volts
Idc=(WL*uc*(Vol*(Vdd-Vtn)-(Vol*Vol)/2))/(1+(Vol/en));
disp(Idc,'Idc(in micro amperes)=');
P=Idc*Vdd;
disp(P,'power dissipated(in microwatts)=');
//answers vary due to round off error

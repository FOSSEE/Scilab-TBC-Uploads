clc; clear; close;

Vdd=1.2;//in volts
Vt=0.4;//in volts
gam=0.2;
voh=0.74;//in volts
fi=0.44;//in volts
Voh=Vdd-Vt-(gam*sqrt(voh+(2*fi)))+gam*sqrt(2*fi);
disp(Voh,'VOH(in volts)=');

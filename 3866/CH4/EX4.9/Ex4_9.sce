clc; clear; close;

t=50*(10^(-12));
Cl=50*(10^(-15));
Reqn=12500;//in ohm
Reqp=30000;//in ohm
Ref=t/(0.7*Cl);
R1=Reqn/Ref;
mprintf('Wn/Ln=%f',R1);
R2=Reqp/Ref;
mprintf('\nWp/Lp=%f',R2);
Vsat=8*(10^6);//in cm/s
Vdd=1.2;//in volts
Vtp=0.4;//in volts
Ep=2.4;//in volts
un=270;//in cm^2/V.s
Vol=0.065;//in volts
En=0.6;//in volts
Vtn=0.4;//in volts
Wp=(un*(Vol*(Vdd-Vtn)-(Vol^2)/2)*(Vdd-Vtp+Ep)*R1)/(Vsat*((Vdd-Vtp)^2)*(1+(Vol/En)));
mprintf('\nWp=%f (in cm)',Wp);
Wp=Wp*10000;//in micrometer
mprintf('\nWn/Ln=%f/0.1 (in 0.1um technology)',0.1*R1);
mprintf('\nWp/Lp=%f/0.1 (in 0.1um technology)',Wp);

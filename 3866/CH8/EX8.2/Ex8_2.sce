clc; clear; close;

Vsat=8*(10^6);//in cm/s
Vdd=1.2;//in volts
Vt1=0.4;//in volts
Ln=1*(10^(-5));//in cm
un=270;//in cm^2/V.s
Vol=0.065;//in volts
En=0.6;//in volts
Vt3=0.4;//in volts
Vq=0.1;//in volts
Cbit=2;//in picofarads
DelV=200;//in mV
Delt=2;//in nanoseconds
k=(Vsat*((Vdd-Vt3-Vq)^2)*Ln*(1+(Vq/En)))/(un*(Vq*(Vdd-Vt1)-(Vq^2)/2)*(Vdd-Vt3-Vq+En));
disp(k,'W1/W3=');
Icell=Cbit*DelV/Delt;
disp(Icell,'Icell(in microamperes)=');
W3=(Icell*(Vdd-Vt1-Vq+En))/(((Vdd-Vq-Vt1)^2)*1.6*Vsat);
disp(W3,'W3(in centimeters)=');
mprintf(' \n This implies that W1=0.7um');

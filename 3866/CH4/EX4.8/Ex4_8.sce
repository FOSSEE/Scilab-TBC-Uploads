clc; clear; close;

Wp=400;//in nanometer
Vsat=8*(10^6);//in cm/s
Vdd=1.8;//in volts
Vtp=0.5;//in volts
Ep=4.8;//in volts
Ln=2*(10^(-5));//in cm
un=270;//in cm^2/V.s
Vol=0.065;//in volts
En=1.2;//in volts
Vtn=0.5;//in volts
k=(Vsat*((Vdd-Vtp)^2)*Ln*(1+(Vol/En)))/(un*(Vol*(Vdd-Vtn)-(Vol^2)/2)*(Vdd-Vtp+Ep));
Wn=k*Wp;
disp(k,'WN/WP=');//answers vary due to round off error
disp(Wn,'Wn(in nanometers)=');//answers vary due to round off error

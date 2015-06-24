// Example 5.12:corner frequency and maximum GAIN
clc;
clear;
close;
Vcc=10;// Colector voltage in volts
Beta= 100;
Rc=1;// Collector resistance in killo ohms
Rs=600;//SERIES RESISTANCE IN OHMS
Re=0.2;// in kilo ohms
R1= 50;// in kilo ohms
R2= 10;// in kilo ohms
Vbe=0.7;// Base to emitter voltage in volts
C1=1;//capacitance in micro farad

Vth=Vcc * (R2/(R1+R2)); // vOLTAGE AT BASE


Rth= (R1*R2)/(R1+R2);
Ib=((Vcc-Vbe)/((Rth+(1+Beta)*Re)*10^3))*10^5;//in micro ampere
Icq= Beta*Ib*10^-3;//in milli ampere
Vt=26;//volate at room termprature in milli volts
gm= (Icq/Vt)*10^3;//transconductance in milli ampere per volts
rpi= (Beta*Vt*10^-3)/(Icq*10^-3);//resistance
Rb=Rth;//base resistance in killo ohms
x=(rpi+(1+Beta)*Re*10^3);//
y=(Rs+Rb*10^3);//
ts=((x*y)/(x+y))*C1*10^-3;//in milli second
fl= (1/(2*%pi*ts*10^-3));//corner frequency in hertz
Ri=(x*Rb*10^-3)/(Rb+x*10^-3);//
Av= ((gm*10^-3*rpi*Rc*10^3)*Rb*10^3)/((Ri+Rs*10^-3)*10^3*(x*10^-3+Rb)*10^3);
disp (fl,"corner frequency in hertz is")
disp(Av,"maximum gain is")

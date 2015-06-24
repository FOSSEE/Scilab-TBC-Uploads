// Example 7.33:Design R-C phase shift oscillator
clc;
clear;
close;
Vce=5;//in volts
RE=1;//emitter reistsance in killo ohms
Vbe=0.7;//in volts
Ie=1;//emitter current in mA
Re=1;//EMITTER RESISTANCE IN KILLO OHMS
f=100;//oscillaor frequency in killo hertz
hfe=100;//
hie=1;//in killo ohms
Vc=5;//in volts
Ic=1;//current in mili ampere
Vcc=20;//in volts
R=10;//resistane in killo ohms
Rc= ((Vcc-Vce-Ie*Re)/(Ic));//collector resistance in killo ohms is
k= Rc/R;
C= ((1/(2*%pi*R*10^3*f*10^3*sqrt(6+(4*1.4)))))*10^12;//capacitance in pico farad
R3= R-hie;//resistance in kiilo ohms
Vb= (Vbe+Ie*Re);//voltage at base
R2=R;//
I2=Vb/R2;// in mA
V2=(Vcc-R2*I2);//voltage drop across R2
IR1= (I2+(1/100));//CURRENT ACROOS R1
R1= V2/(IR1);//
disp(Re,"Emitter resistance in killo ohms is")
disp(Rc,"collector resistance in killo ohms is")
disp(R," resistance in killo ohms is")
disp(C,"Capacitance in pico farad is")
disp(R3," resistance(R3) in killo ohms is")
disp(R2," resistance(R2) in killo ohms is")
disp(R1," resistance(R1) in killo ohms is")

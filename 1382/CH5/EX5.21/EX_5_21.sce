// Example 5.20:mid band gain and upper 3 db frequency
clc;
clear;
close;
Cpi=40;//in pico farad
Vt=26;//voltage in milli volts
Beta=150;//
Icc=1;//current in milli ampere
rpi= ((Beta*Vt)/Icc)*10^-3;//
Icq=1;//current in milli ampere
gm=(Icq/Vt)*10^3;//transconductance in mili ampere per volt
Rc=4.7;//collector resistance in killo ohms
Rl=10;//load resistance in killo ohms
Rld= (Rc*Rl)/(Rc+Rl);//
Cmu=3;//capacitance in pico farad
Cm=round(Cmu*(1+gm*Rld));//miller capacitance in pico farad
R1= 50;// in kilo ohms
R2= 5;// in kilo ohms
Rb= (R1*R2)/(R1+R2);
rs=1;//in killo ohms
x=(Rb*rs)/(Rb+rs);//
y=(rpi*x)/(rpi+x);//
fh=(1/(2*%pi*y*10^3*(Cmu+Cpi)*10^-6));//3-db upper cut off frequency in mega hertz
z=(Rb*rpi)/(Rb+rpi);//
Avm=(gm*Rld*z)/(z+rs);//
disp(fh,"3-db upper cut off frequency in mega hertz is")
disp(Avm,"MIDBAND GAIN")

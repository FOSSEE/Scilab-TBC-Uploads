// Example 5.22:mid band gain and upper 3 db frequency
clc;
clear;
close;
Cmu=3;//capacitance in pico farad
Cpi=40;//in pico farad
Vt=26;//voltage in milli volts
Beta=150;//
Icq=1;//current in milli ampere
rpi= ((Beta*Vt)/Icq)*10^-3;//
gm=(Icq/Vt)*10^3;//transconductance in mili ampere per volt
rs=1;//in killo ohms
re=4.7;//in killo ohms
R1= 40;// in kilo ohms
R2= 20;// in kilo ohms
R3= 27;// in kilo ohms
Rb=(R2*R3)/(R2+R3);//
g=(rs*rpi)/(rs+rpi);//
tp1=(((Rb*g)*(Cpi+2*Cmu))/(Rb+g))*10^-9;//in second
m=rpi/(1+Beta);//
tp2= m*(Cmu+Cpi)*10^-9;//
Rc=4.7;//collector resistance in killo ohms
Rl=10;//load resistance in killo ohms
Rld= (Rc*Rl)/(Rc+Rl);//
tp3=Cmu*10^-12*Rld*10^3;//in second
fh1=(1/(2*%pi*tp1*10^6));//first 3-db upper cut off frequency in mega hertz
fh2=(1/(2*%pi*tp2*10^6));//second 3-db upper cut off frequency in mega hertz
fh3=(1/(2*%pi*tp3*10^6));//third 3-db upper cut off frequency in mega hertz
Avm= -gm*Rld*(rpi/(rpi+1));//
disp(fh1,"3-db upper cut off frequency in mega hertz is")
disp(fh2,"second 3-db upper cut off frequency in mega hertz")
disp(fh3,"third 3-db upper cut off frequency in mega hertz")
disp(Avm,"MIDBAND GAIN")


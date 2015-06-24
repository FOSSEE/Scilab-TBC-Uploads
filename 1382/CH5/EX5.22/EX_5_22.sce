// Example 5.21:mid band gain and upper 3 db frequency
clc;
clear;
close;
Cpi=40;//in pico farad
Vt=26;//voltage in milli volts
Beta=150;//
Icq=1;//current in milli ampere
rpi= ((Beta*Vt)/Icq)*10^-3;//
gm=(Icq/Vt)*10^3;//transconductance in mili ampere per volt
rs=1;//in killo ohms
re=0.5;//in killo ohms
g=(rs*re)/(rs+re);//
m=rpi/(1+Beta);//
tpi= ((m*g)/(m+g))*Cpi*10^-7;//
fh1=(1/(2*%pi*tpi*10^4));//first 3-db upper cut off frequency in mega hertz
Rc=4.7;//collector resistance in killo ohms
Rl=10;//load resistance in killo ohms
Rld= (Rc*Rl)/(Rc+Rl);//
Cmu=3;//capacitance in pico farad
R1= 50;// in kilo ohms
R2= 5;// in kilo ohms
Rb= (R1*R2)/(R1+R2);
fh2=(1/(2*%pi*Cmu*10^-8*Rld*10^3))*10^-2;//second 3-db upper cut off frequency in mega hertz
x=(m*re)/(m+re);///
Avm=(gm*Rld*x)/(x+rs);//
disp(fh1,"3-db upper cut off frequency in mega hertz is")
disp(fh2,"second 3-db upper cut off frequency in mega hertz")
disp(Avm,"MIDBAND GAIN")

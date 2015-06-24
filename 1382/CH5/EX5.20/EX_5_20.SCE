// Example 5.19:corner frequency 
clc;
clear;
close;
Rs=1;//series resistance in killo ohms
Rl=3.7;//load resistance in killo ohms
Rc=3.7;// Collector resistance in killo ohms
R1= 200;// in kilo ohms
R2= 200;// in kilo ohms
Vbe=0.7;// Base to emitter voltage in volts
Rb= (R1*R2)/(R1+R2);
rpi=2.5;//resistance in killo ohms
Cpi=0.18;//capacitance in pico farad
gm=40;//transconductance in milli ampere per volts
y=(Rc*Rl)/(Rc+Rl);//
Cmu= Cpi*(1+gm*y);//
Cm2=Cmu;//
z=(Rs*rpi)/(Rs+rpi);//
R=(Rb*z)/(Rb+z);//
C=Cmu+4;//
f3db= (1/(2*%pi*R*10^3*C))*10^6;//3-dB frequency in mega hertz
C1=4;//capacitance in pico farad
f3db1= (1/(2*%pi*R*10^3*C1))*10^6;//3-dB frequency in mega hertz
disp(f3db,"3-dB frequency in mega hertz due to miller effect")
disp(f3db1,"3-dB frequency in mega hertz")
disp("due to miller effect the capacitance gets multiplied by 75 .hence due to miller effect the bandwidth is reduced")

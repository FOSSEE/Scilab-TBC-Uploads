//Ex7_8 Pg-372
clc

Rl=20*10^(3) //load resistance in ohm
Ri=5000 //input resistance in ohm
f=33 //lower cut-off frequency in Hz
f2=33*10^(3) //higher cut-off frequency

C=(1/(2*%pi*f*(Rl+Ri))) //coupling capacitance (value in textbook is wrong)
printf("Coupling Capacitor = %.1f uF \n",C*10^6)

Req=(Rl*Ri)/(Rl+Ri) //equivalent resistance
Cs=1/(2*%pi*f2*Req) //shunting capacitance (value in textbook is wrong)
printf(" Coupling Capacitor = %.0f uF \n",Cs*10^12)

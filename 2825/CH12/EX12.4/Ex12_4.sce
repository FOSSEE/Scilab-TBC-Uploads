//Ex12_4 Pg-602
clc

L=3 //inductance in henry
Cs=0.05*10^(-12) //capacitance in farad
Cm=10*10^(-12) //capacitance in farad
R=2*10^(3) //resistor R in ohm

disp("Series resonant frequency, fs = 1/2*pi*sqrt(LC)")
fs=1/(2*%pi*sqrt(L*Cs))
printf("            = %.0f KHz \n",fs*1e-3)

disp("The equialent parallel capacitance, Cp = Cm*Cs/Cm+Cs")
Cp=Cm*Cs/(Cm+Cs) //quality factor 
printf("            = %.4f pF \n",Cp*1e12)

disp("Parallel resonant frequency, fp = 1/2*pi*sqrt(L*Cp)")
fp=1/(2*%pi*sqrt(L*Cp))
printf("            = %.0f kHz \n",fp*1e-3)

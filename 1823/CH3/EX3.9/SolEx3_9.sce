//Find the Q-point collector current ICQ.
//Solved Example Ex3.9 page no 85
clear
clc
b=70
Vcc=15          //V
Vbeq=0.7        //V
Iceo=1.42       //mA
Rb=500//*10^3   //kΩ
Ibq=((Vcc-Vbeq)/Rb)*1000
printf("\n  Ibq = %0.2f  mA",Ibq)
Icq=((b*Ibq/1000)+Iceo)
printf("\n  Icq = %0.2f  mA",Icq)

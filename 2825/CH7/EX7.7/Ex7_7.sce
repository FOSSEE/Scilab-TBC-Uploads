//Ex7_7 Pg-372
clc

Rl=2*10^(3) //load resistance in ohm
Ri=500 //input resistance in ohm
C=2*10^(-6) //capacitor in microFarad

f=(1/(2*%pi*C*(Rl+Ri))) //textbook answer is wrong
printf("Lowest cut-off frequency = %.0f Hz",f)

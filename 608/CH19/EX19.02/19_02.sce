//Problem 19.02: A star-connected load consists of three identical coils each of resistance 30 ohm and inductance 127.3 mH. If the line current is 5.08 A, calculate the line voltage if the supply frequency is 50 Hz.

//initializing the variables:
R = 30; // in ohms
L = 0.1273; // in Henry
Ip = 5.08; // in Amperes
f = 50; // in Hz

//calculation:
XL = 2*%pi*f*L
Zp = (R*R + XL*XL)^0.5
Il = Ip
Vp = Ip*Zp
Vl = Vp*(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)line voltage is %.0f V",Vl)
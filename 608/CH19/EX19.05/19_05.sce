//Problem 19.05: Three identical coils each of resistance 30 ohm and inductance 127.3 mH are connected in delta to a 440 V, 50 Hz, 3-phase supply. Determine (a) the phase current, and (b) the line current.

//initializing the variables:
R = 30; // in ohms
L = 0.1273; // in Henry
VL = 440; // in Volts
f = 50; // in Hz

//calculation:
XL = 2*%pi*f*L
Zp = (R*R + XL*XL)^0.5
Vp = VL
//Phase current
Ip = Vp/Zp
//For a delta connection,
IL = Ip*(3^0.5)

printf("\n\n Result \n\n")
printf("\n (a)the phase current %.1f A",Ip)
printf("\n (b)line current %.2f A",IL)
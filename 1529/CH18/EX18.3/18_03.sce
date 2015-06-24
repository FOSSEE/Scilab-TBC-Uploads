//Chapter 18, Problem 3
clc;
//initializing the variables:
C = 20E-6;                      //capacitance in farads
R = 50000;                      //resistance in ohms
V = 20;                         //supply voltage
t1 = 1;                         // in secs
t2 = 2;                         // in secs
VRt = 15;                       // in volts

//calculation:
taw = R*C
I = V/R
Vct1 = V*(1-%e^(-1*t2/taw))
t3 = -1*taw*log(VRt/V)
it1 = I*%e^(-1*t1/taw)


printf("\n (a)Initial value of the current flowing = %.4f mA\n\n",I*10^3)
printf("\n (b)Time constant of the circuit = %.0f sec\n\n",taw)
printf("\n (c)The value of the current one second after connection = %.3f mA\n\n",(it1/1E-3))
printf("\n (d)The value of the capacitor voltage two seconds after connection = %.2f V\n\n",Vct1)
printf("\n (e)The time after connection when the resistor voltage is 15 V = %.3f sec\n\n",t3)

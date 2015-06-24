//Chapter 18, Problem 6
clc;

//initializing the variables:
R = 50000;              //resistance in ohms
V = 100;                //supply voltage
Vc1 = 20;               // in volts
tou = 0.8;              // in secs
t1 = 0.5;               // in secs
t2 = 1;                 // in secs

//calculation:
C = tou/R
t = -1*tou*log(Vc1/V)
I = V/R
it1 = I*%e^(-1*t1/tou)
Vc = V*%e^(-1*t2/tou)


printf("\n (a)The value of the capacitor = %f uF\n\n",C*10^6)
printf("\n (b)The time for the capacitor voltage to fall to 20 V = %.2f sec\n\n",t)
printf("\n (c)The current flowing when the capacitor has been discharging for 0.5 s = %f mA\n\n",it1*10^3)
printf("\n (d)The voltage drop across the resistor when the capacitor has been discharging for one second = %.1f V\n\n",Vc)

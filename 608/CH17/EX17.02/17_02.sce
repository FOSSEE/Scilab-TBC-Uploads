//Problem 17.02: A 4 μF capacitor is charged to 24 V and then discharged through a 220 kohms resistor. Use the ‘initial slope and three point’ method to draw: (a) the capacitor voltage/time characteristic, (b) the resistor voltage/time characteristic and (c) the current/time characteristic, for the transients which occur. From the characteristics determine the value of capacitor voltage, resistor voltage and current one and a half seconds after discharge has started.

//initializing the variables:
C = 4E-6; // in Farads
R = 220000; // in ohms
V = 24; // in Volts
t1 = 1.5; // in secs

//calculation:
tou = R*C
t = 0:0.1:10
Vc = V*(1-%e^(-1*t/tou));
plot2d(t,Vc)
xtitle("capacitor voltage/time characteristic", "t", "Vc")
xset('window',1)
VR = V*(1-%e^(-1*t/tou));
plot2d(t,VR)
xtitle("resistor voltage/time characteristic", "t", "VR")
xset('window',2)
I = V/R
i = I*%e^(-1*t/tou)
plot2d(t,i)
xtitle("current/time characteristic", "t", "i")
Vct1 = V*%e^(-1*t1/tou)
VRt1 = V*%e^(-1*t1/tou)
it1 = I*%e^(-1*t1/tou)

printf("\ = \n\n Result \n\n")
printf("\n the value of capacitor voltage is %.2f V, resistor voltage is %.2f V, current is %.1E A at one and a half seconds after discharge has started.",Vct1, VRt1,it1)
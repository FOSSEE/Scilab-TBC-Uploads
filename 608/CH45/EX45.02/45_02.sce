//Problem 45.02: A d.c. voltage supply of 200 V is connected across a 5 μF capacitor as shown in Figure 45.5. When the supply is suddenly cut by opening switch S, the capacitor is left isolated except for a parallel resistor of 2 Mohm. Calculate the p.d. across the capacitor after 20 s.

//initializing the variables:
C = 5E-6; // in Farad
R = 2000000; // in Ohm
V = 200; // in VOlts
tc = 20; // in sec

//calculation:
//capacitor voltage, Vc
Vc = V*(%e^(-1*tc/(R*C)))

printf("\n\n Result \n\n")
printf("\n  value of capacitor voltage at t = 20s is %.2f V",Vc)

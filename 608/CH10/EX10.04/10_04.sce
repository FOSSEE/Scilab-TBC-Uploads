//Problem 10.04: An ammeter has a f.s.d. of 100 mA and a resistance of 50 ohms. The ammeter is used to measure the current in a load of resistance 500 ohms when the supply voltage is 10 V. Calculate (a) the ammeter reading expected (neglecting its resistance), (b) the actual current in the circuit, (c) the power dissipaed in the ammeter, and (d) the power dissipated in the load.

//initializing the variables:
V = 10; // in volts
fsd = 0.1; // in Amperes
ra = 50; // in ohms
R = 500; // in ohms

//calculation:
Ie = V/R
Ia = V/(R + ra)
Pa = Ia*Ia*ra
PR = Ia*Ia*R

printf("\n\n Result \n\n")
printf("\n (a)expected ammeter reading = %.2E A\", Ie)
printf("\n (b)Actual ammeter reading = %.2E A",Ia)
printf("\n (c)Power dissipated in the ammeter = %.2E W", Pa)
printf("\n (d)Power dissipated in the load resistor = %.2E W",PR)
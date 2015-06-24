//Chapter 10, Problem 4, figure 10.10
clc;
R=500;              //load resistance
V=10;               //supply voltage
ra=50;              //ammeter resistance
Ie=V/R;             //calculating expected current
Ia=V/(R+ra);        //calculating actual current
P=Ia^2*ra;          //calculating power dissipated in the ammeter
Pl=Ia^2*R;          //calculating power dissipated in load resistor
printf("(a) Expected ammeter reading = %f mA\n\n\n",Ie*1000);
printf("(b) Actual ammeter reading = %f mA\n\n\n",Ia*1000);
printf("(c) Power dissipated in the ammeter = %f mW\n\n\n",P*1000);
printf("(d) Power dissipated in the load resistor = %f mW\n\n\n",Pl*1000);

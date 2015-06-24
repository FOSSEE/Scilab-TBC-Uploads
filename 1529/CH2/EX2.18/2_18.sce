//Chapter 2, Problem 18
clc;
I=10;               //Curent in ampere
R=20;               //Resistance in ohm
T=6;                //Time in hours
unit=13;                //Unit of cost of electricity
P=I^2*R;                //Calculating power dissipated by electric fire
E=P*T;                  //Calculating Energy used
cost=E*unit;                //Calculating cost of energy
cost=cost/100000;

printf("Power dissipated by element = %f kW\n\n\n",P/1000);
printf("Energy used in 6 hours = %f kWh\n\n\n",E/1000);
printf("Cost of energy = £ %fp",cost);

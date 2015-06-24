//Problem 2.18: Determine the power dissipated by the element of an electric fire of resistance 20ohms when a current of 10 A flows through it. If the fire is on for 6 hours determine the energy used and the cost if 1 unit of electricity costs 7p.

//initializing the variables:
R = 20; // in ohms
I = 10; // in ampere
t = 6; // in hours
p = 7; // in paise per kWh

//calculation:
P = I*I*R
E = P*t/1000 // in kWh
C = E*p

printf("\n\nResult\n\n")
printf("\nPower(P): %.0f Watt(W)",P)
printf("\nCost per week: %.0f Paise(p)\n",C)
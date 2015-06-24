//Problem 2.16: Electrical equipment in an office takes a current of 13 A from a 240 V supply. Estimate the cost per week of electricity if the equipment is used for 30 hours each week and 1 kWh of energy costs 7p?

//initializing the variables:
V = 240; // in Volts
I = 13; // in ampere
t = 30; // in hours
p = 7; // in paise per kWh

//calculation:
P = V*I
E = P*t/1000 // in kWh
C = E*p

printf("\n\nResult\n\n")
printf("\nCost per week: %.1f Paise(p)\n",C)
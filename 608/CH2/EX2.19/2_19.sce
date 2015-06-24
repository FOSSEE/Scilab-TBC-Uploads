//Problem 2.19: A business uses two 3 kW fires for an average of 20 hours each per week, and six 150 W lights for 30 hours each per week. If the cost of electricity is 7p per unit, determine the weekly cost of electricity to the business.

//initializing the variables:
P1 = 3; // in kW
P2 = 150; // in Watt
n1 = 2; // no. of P1 Equips
n2 = 6; // no. of P2 Equips
t1 = 20; // in hours each per week
t2 = 30; // in hours each per week
p = 7; // in paise per kWh

//calculation:
E1 = P1*t1*n1 // in kWh by two P1 eqips
E2 = P2*t2*n2/1000 // in kWh by six P2 eqips
Et = E1 + E2
C = Et * 7
printf("\n\nResult\n\n")
printf("\nCost per week: %.0f Paise(p)\n",C)
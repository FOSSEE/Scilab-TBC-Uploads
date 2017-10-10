clear//

//Variables 

Pcdc = 10.0                   //dc power (in watt)
ne = 0.32                     //efficiency

//Calculation

Poac = ne * Pcdc / (1 - ne)   //a.c. power output (in watt)

//Result

printf("\n The a.c. power output is  %0.1f  W.",Poac)

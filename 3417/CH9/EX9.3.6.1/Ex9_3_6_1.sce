//Ex9.3.6.1;calculate power in h.p. at any instant and the yearly power output
A=0.5*10^6;//unit=m
h0=8.5;//unit=m
t=3*3600//unit=s; since t=3 hr
p=1025;//unit=kg/m^3
h=8;//unit=m
n0=0.70;//efficiency of the generator;70%
//volume of the basin=Ah0
volume_of_the_basin=A*h0;
//Average discharge Q=volume/time period
Q=(A*h0)/t;
printf(" volume of the basin=%f m^3 \n Average discharge Q=%f m^3 /s",volume_of_the_basin,Q);
//power at any instant
P=((Q*p*h)/75)*n0;
printf("\n power at any instant P=%f h.p.",P);
//The total energy in kWh/tidal cycle
E=P*0.736*3;
printf("\n The total energy in kWh/tidal cycle E=%f",E);
//Total number of tidal cycle in a year=705
printf("\n Total number of tidal cycle in a year=705");
//Therefore Total output per annum
Total_output_per_annum=E*705;
printf("\n Total output per annum=%f kWh/year",Total_output_per_annum);

//The value of "power of instant" in a text book is misprinted.
